import sys, re

def read_int(f, length: int, signed: bool = False):
    return int.from_bytes(f.read(length), byteorder = 'little', signed = signed)

def read_str(f):
    array = bytearray(b'')

    while True:
        byte = f.read(1)[0]

        if byte == 0:
            break

        array.append(byte)

    return array.decode("cp932")

def expand_str(s):
    s = s.replace("\n", "\\n")
    s = s.replace("\r", "\\r")

    return s

def tagify(s):
    return re.sub(r'[^0-9A-Za-z_]', '_', re.sub(r'[^0-9A-Za-z_ ]', '', s.upper()))

class ToolInfo:
    tag: str
    name: str
    icon: int
    desc: str

    def __init__(self):
        self.tag = ""
        self.name = ""
        self.icon = 0
        self.desc = ""

    def read_from(self, f, offset: int):
        f.seek(offset)

        name_offs = read_int(f, 4) & 0x01FFFFFF
        self.icon = read_int(f, 4) # sould be 2, we include padding because lazy
        desc_offs = read_int(f, 4) & 0x01FFFFFF

        f.seek(name_offs)
        self.name = expand_str(read_str(f))

        f.seek(desc_offs)
        self.desc = expand_str(read_str(f))

        self.tag = tagify(self.name)

        return self

class FoodInfo:
    tag: str
    name: str
    is_drink: bool
    stamina: int
    fatigue: int
    icon: int
    desc: str

    def __init__(self):
        self.tag = ""
        self.name = ""
        self.is_drink = False
        self.stamina = 0
        self.fatigue = 0
        self.icon = 0
        self.desc = ""

    def read_from(self, f, offset: int):
        f.seek(offset)

        name_offs     = read_int(f, 4) & 0x01FFFFFF
        self.is_drink = True if read_int(f, 1) != 0 else False
        self.stamina  = read_int(f, 1, True)
        self.fatigue  = read_int(f, 1, True)
        f.read(1) # discard one byte
        self.icon     = read_int(f, 4) # sould be 2, we include padding because lazy
        desc_offs     = read_int(f, 4) & 0x01FFFFFF

        f.seek(name_offs)
        self.name = expand_str(read_str(f))

        f.seek(desc_offs)
        self.desc = expand_str(read_str(f))

        self.tag = tagify(self.name)

        return self

class ArticleInfo:
    tag: str
    name: str
    icon: int
    desc: str

    def __init__(self):
        self.tag = ""
        self.name = ""
        self.icon = 0
        self.desc = ""

    def read_from(self, f, offset: int):
        f.seek(offset)

        name_offs = read_int(f, 4) & 0x01FFFFFF
        self.icon = read_int(f, 4) # sould be 2, we include padding because lazy
        desc_offs = read_int(f, 4) & 0x01FFFFFF

        f.seek(name_offs)
        self.name = expand_str(read_str(f))

        f.seek(desc_offs)
        self.desc = expand_str(read_str(f))

        self.tag = tagify(self.name)

        return self

class ProductInfo:
    price: int
    kind: int
    item: int

    def __init__(self):
        self.price = 0
        self.kind = 0
        self.item = 0

    def read_from(self, f, offset: int):
        f.seek(offset)

        hword = read_int(f, 2)

        self.price = hword & 0x7FFF
        self.kind = (hword & 0x8000) != 0

        self.item = read_int(f, 1)

        return self

def main():
    try:
        rom_gba = sys.argv[1]
    except:
        sys.exit(f"Usage: [python 3] {sys.argv[0]} ROM")

    with open(rom_gba, 'rb') as f:
        TOOL_COUNT = 81
        TOOL_TABLE = 0x080EAB0C & 0x01FFFFFF

        tool_infos = [ToolInfo().read_from(f, TOOL_TABLE + i * 12) for i in range(TOOL_COUNT)]

        print("// TOOL BEG")

        for i, tool_info in enumerate(tool_infos):
            print(f'/* {i:02X} */ o( {tool_info.tag}, {tool_info.icon}, "{tool_info.name}", "{tool_info.desc}" )')

        print("// TOOL END")

        FOOD_COUNT = 171
        FOOD_TABLE = 0x080EDCD8 & 0x01FFFFFF

        food_infos = [FoodInfo().read_from(f, FOOD_TABLE + i * 16) for i in range(FOOD_COUNT)]

        print("// FOOD BEG")

        for i, food_info in enumerate(food_infos):
            print(f'/* {i:02X} */ o( {food_info.tag}, {"true" if food_info.is_drink else "false"}, {food_info.stamina}, {food_info.fatigue}, {food_info.icon}, "{food_info.name}", "{food_info.desc}" )')

        print("// FOOD END")

        ARTICLE_COUNT = 95
        ARTICLE_TABLE = 0x080EFED4 & 0x01FFFFFF

        article_infos = [ArticleInfo().read_from(f, ARTICLE_TABLE + i * 12) for i in range(ARTICLE_COUNT)]

        print("// ARTICLE BEG")

        for i, article_info in enumerate(article_infos):
            print(f'/* {i:02X} */ o( {article_info.tag}, {article_info.icon}, "{article_info.name}", "{article_info.desc}" )')

        print("// ARTICLE END")

        PRODUCT_COUNT = 103
        PRODUCT_TABLE = 0x080F0348 & 0x01FFFFFF

        product_infos = [ProductInfo().read_from(f, PRODUCT_TABLE + i * 4) for i in range(PRODUCT_COUNT)]

        print("// PRODUCT BEG")

        for i, product_info in enumerate(product_infos):
            kind = "FOOD" if product_info.kind == 0 else "ARTICLE"
            tag = food_infos[product_info.item].tag if product_info.kind == 0 else article_infos[product_info.item].tag
            print(f'/* {i:02X} */ o( {tag}, {kind}, {product_info.price} )')

        print("// PRODUCT END")

if __name__ == '__main__':
    main()
