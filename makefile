.SUFFIXES:

# ==================
# = PROJECT CONFIG =
# ==================

BUILD_NAME := fomt

INCLUDE_DIRS := \
  tools/agbcc/include \
  tools/libagbc++ \
  tools/libsix/include

SRC_DIR = src
ASM_DIR = asm
DATA_ASM_DIR = data
BUILD_DIR = build

# ====================
# = TOOL DEFINITIONS =
# ====================

TOOLCHAIN ?= $(DEVKITARM)

ifneq (,$(TOOLCHAIN))
  export PATH := $(TOOLCHAIN)/bin:$(PATH)
endif

PREFIX := arm-none-eabi-

export OBJCOPY := $(PREFIX)objcopy
export AS := $(PREFIX)as
export CPP := $(PREFIX)cpp
export LD := $(PREFIX)ld
export STRIP := $(PREFIX)strip

ifeq ($(OS),Windows_NT)
  EXE := .exe
else
  EXE :=
endif

CC1      := tools/agbcc/bin/agbcc$(EXE)
CC1PLUS  := tools/agbcc/bin/agbcp$(EXE)

OLD_CC1  := tools/agbcc/bin/old_agbcc$(EXE)

# ================
# = BUILD CONFIG =
# ================

INCFLAGS     := $(foreach dir, $(INCLUDE_DIRS), -I "$(dir)")

CPPFLAGS := $(INCFLAGS) -iquote . -iquote include -Wno-trigraphs
CFLAGS   := -mthumb-interwork -Wimplicit -Wparentheses -Werror -O2 -fhex-asm
CXXFLAGS := -quiet -fno-exceptions $(CFLAGS)
ASFLAGS  := $(INCFLAGS) -I . -I include -mcpu=arm7tdmi

ROM := $(BUILD_NAME).gba
ELF := $(ROM:.gba=.elf)
MAP := $(ROM:.gba=.map)
LDS := $(BUILD_NAME).lds

C_SRCS := $(wildcard $(SRC_DIR)/*.c $(SRC_DIR)/*/*.c)
C_OBJS := $(C_SRCS:%.c=$(BUILD_DIR)/%.o)

CXX_SRCS := $(wildcard $(SRC_DIR)/*.cc)
CXX_OBJS := $(CXX_SRCS:%.cc=$(BUILD_DIR)/%.o)

ASM_SRCS := $(wildcard $(SRC_DIR)/*.s $(ASM_DIR)/*.s)
ASM_OBJS := $(ASM_SRCS:%.s=$(BUILD_DIR)/%.o)

DATA_ASM_SRCS := $(wildcard $(DATA_ASM_DIR)/*.s)
DATA_ASM_OBJS := $(DATA_ASM_SRCS:%.s=$(BUILD_DIR)/%.o)

ALL_OBJS := $(C_OBJS) $(CXX_OBJS) $(ASM_OBJS) $(DATA_ASM_OBJS)
ALL_DEPS := $(ALL_OBJS:%.o=%.d)

SUBDIRS := $(sort $(dir $(ALL_OBJS)))
$(shell mkdir -p $(SUBDIRS))

# ===========
# = RECIPES =
# ===========

compare: $(ROM)
	sha1sum -c $(BUILD_NAME).sha1

.PHONY: compare

# ROM from ELF
%.gba: %.elf
	$(OBJCOPY) -O binary --pad-to 0x4800000 $< $@

# ELF
$(ELF): $(ALL_OBJS) $(LDS)
	@echo "LD $(LDS) $(ALL_OBJS:$(BUILD_DIR)/%=%)"
	@cd $(BUILD_DIR) && $(LD) -T ../$(LDS) -Map ../$(MAP) -L../tools/agbcc/lib -lgcc -lc $(ALL_OBJS:$(BUILD_DIR)/%=%) -o ../$@
	@$(STRIP) -N .gcc2_compiled. $(ELF)

# C dependency file
$(BUILD_DIR)/%.d: %.c
	@$(CPP) $(CPPFLAGS) $< -o $@ -MM -MG -MT $@ -MT $(BUILD_DIR)/$*.o

# C object
$(BUILD_DIR)/%.o: %.c $(BUILD_DIR)/%.d
	@echo "CC $<"
	@$(CPP) $(CPPFLAGS) $< | $(CC1) $(CFLAGS) -o $(BUILD_DIR)/$*.s
	@echo ".text\n\t.align\t2, 0\n" >> $(BUILD_DIR)/$*.s
	@$(AS) $(ASFLAGS) $(BUILD_DIR)/$*.s -o $@ 

# C++ dependency file
$(BUILD_DIR)/%.d: %.cc
	@$(CPP) $(CPPFLAGS) $< -o $@ -MM -MG -MT $@ -MT $(BUILD_DIR)/$*.o

# C++ object
$(BUILD_DIR)/%.o: %.cc $(BUILD_DIR)/%.d
	@echo "CP $<"
	@$(CPP) $(CPPFLAGS) $< | $(CC1PLUS) $(CXXFLAGS) -o $(BUILD_DIR)/$*.s
	@echo ".text\n\t.align\t2, 0\n" >> $(BUILD_DIR)/$*.s
	@$(AS) $(ASFLAGS) $(BUILD_DIR)/$*.s -o $@

# ASM dependency file (dummy, generated with the object)
$(BUILD_DIR)/%.d: $(BUILD_DIR)/%.o
	@touch $@

# ASM object
$(BUILD_DIR)/%.o: %.s
	@echo "AS $<"
	@$(AS) $(ASFLAGS) $< -o $@ --MD $(BUILD_DIR)/$*.d

# overrides for matching
$(BUILD_DIR)/src/m4a.o: CC1 := $(OLD_CC1)

clean:
	@echo "RM $(ROM) $(ELF) $(MAP) $(BUILD_DIR)"
	@rm -f $(ROM) $(ELF) $(MAP) 
	@rm -r $(BUILD_DIR)/

.PHONY: clean

ifneq (clean,$(MAKECMDGOALS))
-include $(ALL_DEPS)
.PRECIOUS: $(BUILD_DIR)/%.d
endif
