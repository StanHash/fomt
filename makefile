.SUFFIXES:

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

BUILD_NAME := fomt

#### Build Files ####

CC1      := tools/agbcc/bin/agbcc$(EXE)
CC1_OLD  := tools/agbcc/bin/old_agbcc$(EXE)
CC1PLUS  := tools/agbcc/bin/agbcp$(EXE)

INCLUDE_DIRS := tools/agbcc/include tools/agbcc tools/libagbc++ tools/libsix/include
INCFLAGS     := $(foreach dir, $(INCLUDE_DIRS), -I "$(dir)")

CPPFLAGS := $(INCFLAGS) -iquote include -Wno-trigraphs
CFLAGS   := -mthumb-interwork -Wimplicit -Wparentheses -Werror -O2 -fhex-asm
CXXFLAGS := -quiet -fno-exceptions $(CFLAGS)
ASFLAGS  := $(INCFLAGS) -I include -mcpu=arm7tdmi

C_SUBDIR = src
ASM_SUBDIR = asm
DATA_ASM_SUBDIR = data
BUILD_DIR = build

C_BUILDDIR = $(BUILD_DIR)/$(C_SUBDIR)
ASM_BUILDDIR = $(BUILD_DIR)/$(ASM_SUBDIR)
DATA_ASM_BUILDDIR = $(BUILD_DIR)/$(DATA_ASM_SUBDIR)


#### Files/Directories ####

ROM          := $(BUILD_NAME).gba
ELF          := $(ROM:.gba=.elf)
MAP          := $(ROM:.gba=.map)
LDSCRIPT     := $(BUILD_NAME).lds

C_SRCS := $(wildcard $(C_SUBDIR)/*.c $(C_SUBDIR)/*/*.c $(C_SUBDIR)/*/*/*.c)
C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(C_BUILDDIR)/%.o,$(C_SRCS))

CC_SRCS := $(wildcard $(C_SUBDIR)/*.cc $(C_SUBDIR)/**/*.cc)
CC_OBJS := $(patsubst $(C_SUBDIR)/%.cc,$(C_BUILDDIR)/%.o,$(CC_SRCS))

ASM_SRCS := $(wildcard $(ASM_SUBDIR)/*.s)
ASM_OBJS := $(patsubst $(ASM_SUBDIR)/%.s,$(ASM_BUILDDIR)/%.o,$(ASM_SRCS))

DATA_ASM_SRCS := $(wildcard $(DATA_ASM_SUBDIR)/*.s)
DATA_ASM_OBJS := $(patsubst $(DATA_ASM_SUBDIR)/%.s,$(DATA_ASM_BUILDDIR)/%.o,$(DATA_ASM_SRCS))

ALL_OBJS := $(C_OBJS) $(CC_OBJS) $(ASM_OBJS) $(DATA_ASM_OBJS)

SUBDIRS := $(sort $(dir $(ALL_OBJS)))


#### Recipes ####
$(shell mkdir -p $(SUBDIRS))

$(ROM): $(ELF)
	$(OBJCOPY) -O binary --pad-to 0x4800000 $< $@

$(ELF): $(ALL_OBJS) $(LDSCRIPT)
	@echo "LD $(LDSCRIPT)"
	@cd $(BUILD_DIR) && $(LD) -T ../$(LDSCRIPT) -Map ../$(MAP) -L../tools/agbcc/lib -lgcc -lc -o ../$@
	@$(STRIP) -N .gcc2_compiled. $(ELF)

$(C_BUILDDIR)/%.o: $(C_SUBDIR)/%.c
	@echo "CC $<"
	@$(CPP) $(CPPFLAGS) $< | $(CC1) $(CFLAGS) -o $(C_BUILDDIR)/$*.s
	@echo ".text\n\t.align\t2, 0\n" >> $(C_BUILDDIR)/$*.s
	@$(AS) $(ASFLAGS) $(C_BUILDDIR)/$*.s -o $@ 

$(C_BUILDDIR)/%.o: $(C_SUBDIR)/%.cc
	@echo "CP $<"
	@$(CPP) $(CPPFLAGS) $< | $(CC1PLUS) $(CXXFLAGS) -o $(C_BUILDDIR)/$*.s
	@echo ".text\n\t.align\t2, 0\n" >> $(C_BUILDDIR)/$*.s
	@$(AS) $(ASFLAGS) $(C_BUILDDIR)/$*.s -o $@ 

$(ASM_BUILDDIR)/%.o: $(ASM_SUBDIR)/%.s
	@echo "AS $<"
	@$(AS) $(ASFLAGS) $< -o $@

$(DATA_ASM_BUILDDIR)/%.o: $(DATA_ASM_SUBDIR)/%.s
	@echo "AS $<"
	@$(AS) $(ASFLAGS) $< -o $@

clean:
	rm -f $(ROM) $(ELF) $(MAP) 
	rm -r $(BUILD_DIR)/

compare: $(ROM)
	sha1sum -c $(BUILD_NAME).sha1
