# TODO

- update makefile to account for include dependencies.
- update makefile to work with a system install of a `arm-none-eabi` toolchain.
- clean up the following files:
  - `src/barn.cc`
  - `src/code_800EFEC.c`
- merge the following files (may require decompiling):
  - (part of?) `asm/code_800C450.s` and `src/code_800CCAC.cc` into `coop.cc`
  - `src/item.cc` and `src/data/{tools,foods,articles,products}.c`.
- decompile m4a (port from an existing GBA decompilation)
- decompile the rest of the game
