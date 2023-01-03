import sys, re
from typing import List
import symbols

RE = re.compile(r'_08[0-9A-F]{6}:\s+\.4byte\s+0x(?P<addr>08[0-9A-F]{6})')
RE_REPLACE = re.compile(r'0x(?P<addr>08[0-9A-F]{6})')

def main(args: List[str]):
    try:
        elf_name = args[1]
        asm_names = args[2:]

    except IndexError:
        sys.exit(f"Usage: [python 3] {args[0]} ELF ASM...")

    with open(elf_name, 'rb') as f:
        syms = { addr: name for addr, name in symbols.from_elf(f) }

    addr_map = {}

    for asm_name in asm_names:
        with open(asm_name, 'r') as f:
            for line in f.readlines():
                m = RE.match(line)

                if m == None:
                    continue

                addr = int(m.group('addr'), base = 16)

                if addr in syms:
                    addr_map[addr] = syms[addr]

    for addr in sorted(addr_map.keys()):
        print(f"{addr:08X} {addr_map[addr]}")

    def repl_func(m):
        addr = int(m.group('addr'), base = 16)
        if addr in addr_map:
            return addr_map[addr]
        return f'0x{addr:08X}'

    for asm_name in asm_names:
        lines = []

        with open(asm_name, 'r') as f:
            for line in f.readlines():
                lines.append(re.sub(RE_REPLACE, repl_func, line))

        with open(asm_name, 'w') as f:
            f.writelines(lines)

if __name__ == '__main__':
    main(sys.argv)
