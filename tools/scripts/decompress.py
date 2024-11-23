import sys


class ReadBits:
    source_data: bytes
    current_offset: int

    current_word: int
    current_bits: int

    def __init__(self, data: bytes, offset: int) -> None:
        self.source_data = data
        self.current_offset = offset

        self.current_word = 0
        self.current_bits = 0

    def read_bits(self, num_bits: int) -> int:
        data = self.current_word >> (32 - num_bits)
        self.current_bits = self.current_bits - num_bits

        if self.current_bits < 0:
            new_word = int.from_bytes(
                self.source_data[self.current_offset : self.current_offset + 4],
                byteorder="little",
            )

            self.current_offset = self.current_offset + 4

            self.current_word = 0xFFFFFFFF & (new_word << (-self.current_bits))
            self.current_bits = self.current_bits + 32

            return data | (new_word >> self.current_bits)

        self.current_word = 0xFFFFFFFF & (self.current_word << num_bits)

        return data


class ReadRaw:
    bit_reader: ReadBits

    def __init__(self, bit_reader: ReadBits):
        self.bit_reader = bit_reader

    def read_bits(self, num_bits: int) -> int:
        return self.bit_reader.read_bits(num_bits)

    def read_byte(self) -> int:
        return self.bit_reader.read_bits(8)


def decode_huffman_tree(read: ReadBits, bits: int) -> list[int] | None:
    huff_tree = [0xFFFFFFFF]
    current_path = 0

    # FORMAT:
    # FOR I IN RANGE BITS * 2 - 1:
    # ATOM | number of entries with I bits of path
    # FOR J IN THIS NUMBER:
    # ATOM | value of entry

    # I need to figure this out a bit better I think

    total_count = 0

    for num_bits_path in range(bits * 2):
        count = read.read_bits(bits)

        # print(f"count = {count}, num_bits_path = {num_bits_path}")

        if count > 2**num_bits_path:
            return None

        total_count = total_count + count

        if total_count > 2**bits:
            return None

        current_path = current_path << 1

        for _ in range(count):
            node_id = 0  # root

            for path_bit in range(num_bits_path):
                huff_bit = (current_path >> (num_bits_path - path_bit)) & 1
                huff_shift = huff_bit * 16

                # print(f"{node_id} {len(huff_tree)}")
                # pretty_huff_tree(huff_tree)

                child_id = 0xFFFF & (huff_tree[node_id] >> huff_shift)

                if child_id == 0xFFFF:
                    child_id = len(huff_tree)
                    huff_tree.append(0xFFFFFFFF)

                    huff_tree[node_id] = huff_tree[node_id] & ~(0xFFFF << huff_shift)
                    huff_tree[node_id] = huff_tree[node_id] | (child_id << huff_shift)

                node_id = child_id

            huff_bit = current_path & 1
            huff_shift = huff_bit * 16

            leaf_id = len(huff_tree)
            huff_tree.append(0x80000000 | read.read_bits(bits))

            huff_tree[node_id] = huff_tree[node_id] & ~(0xFFFF << huff_shift)
            huff_tree[node_id] = huff_tree[node_id] | (leaf_id << huff_shift)

            current_path = current_path + 1

    # Check that the tree is complete
    for node in huff_tree:
        if (node & 0xFFFF0000) == 0xFFFF0000 or (node & 0x0000FFFF) == 0x0000FFFF:
            return None

    return huff_tree


def huff_decode(read: ReadBits, huff_tree: list[int]) -> int:
    current_node = 0

    while (huff_tree[current_node] & 0x80000000) == 0:
        huff_bit = read.read_bits(1)
        huff_shift = huff_bit * 16

        current_node = (huff_tree[current_node] >> huff_shift) & 0xFFFF

    return huff_tree[current_node] & 0x7FFFFFF


class ReadHuff4(ReadRaw):
    huff_tree: list[int]

    def __init__(self, bit_reader: ReadBits) -> None:
        super().__init__(bit_reader)
        self.huff_tree = decode_huffman_tree(bit_reader, 4)

    def read_byte(self) -> int:
        hi = huff_decode(self.bit_reader, self.huff_tree)
        lo = huff_decode(self.bit_reader, self.huff_tree)

        return (hi << 4) | lo


class ReadHuff8(ReadRaw):
    huff_tree: list[int]

    def __init__(self, bit_reader: ReadBits) -> None:
        super().__init__(bit_reader)
        self.huff_tree = decode_huffman_tree(bit_reader, 8)

    def read_byte(self) -> int:
        return huff_decode(self.bit_reader, self.huff_tree)


class LZSSStream:
    decoded_size: int
    expected_size: int
    ladder_spec: str

    def __init__(self, expected_size: int) -> None:
        self.decoded_size = 0
        self.expected_size = expected_size
        self.ladder_spec = ""

    def set_ladder_spec(self, spec: str) -> None:
        self.ladder_spec = spec

    def complete(self) -> bool:
        return self.decoded_size >= self.expected_size

    def overflew(self) -> bool:
        return self.decoded_size > self.expected_size

    def put_literal(self, value: int) -> None:
        self.decoded_size += 1

    def put_lookup(self, distance: int, length: int) -> None:
        self.decoded_size += length

    def put_run_length(self, value: int, length: int) -> None:
        self.decoded_size += length


class LZSSDecoder(LZSSStream):
    data: bytearray

    def __init__(self, expected_size: int) -> None:
        super().__init__(expected_size)
        self.data = bytearray()

    def put_literal(self, value: int) -> None:
        super().put_literal(value)
        self.data.append(value)

    def put_lookup(self, distance: int, length: int) -> None:
        super().put_lookup(distance, length)

        for _ in range(length):
            offset = len(self.data) - distance
            self.data.append(self.data[offset])

    def put_run_length(self, value: int, length: int) -> None:
        super().put_run_length(value, length)

        for _ in range(length):
            self.data.append(value)


class LZSSLookupFormat:
    start_offset: int
    distance_bits: int

    def __init__(self, start_offset: int, distance_bits: int) -> None:
        self.start_offset = start_offset
        self.distance_bits = distance_bits

    def read_distance(self, read: ReadRaw) -> int:
        return self.start_offset + read.read_bits(self.distance_bits)


def decode_lzss_format_ladder(
    read: ReadRaw, num_entries: int
) -> tuple[list[LZSSLookupFormat], str]:
    offset = 1
    result = []

    for _ in range(num_entries):
        bits = read.read_bits(4) + 1
        result.append(LZSSLookupFormat(offset, bits))
        offset = offset + 2**bits

    return result, "".join(str(ent.distance_bits) for ent in result)


def vli(read: ReadRaw, bits_per_atom: int) -> int:
    """
    Read variable-length integers, split into atoms.
    Used by window coding 2 and 3.
    """

    result = 0

    while True:
        atom = read.read_bits(bits_per_atom)

        # bits per "digit" is (bits_per_atom - 1)
        # the lowest bit is used as a continue mark

        result = (result << (bits_per_atom - 1)) + (atom >> 1)

        if (atom & 1) == 0:
            return result


def lzss0(read: ReadRaw, stream: LZSSStream) -> bool:
    ladder, ladder_spec = decode_lzss_format_ladder(read, 2)
    stream.set_ladder_spec(ladder_spec)

    while not stream.complete():
        method = read.read_bits(2)

        if method == 2:
            size = 1 + read.read_bits(6)

            for _ in range(size):
                stream.put_literal(read.read_byte())

        elif method == 3:
            size = 1 + read.read_bits(6)
            byte = read.read_byte()
            stream.put_run_length(byte, size)

        else:
            idx = method

            dist = ladder[idx].read_distance(read)
            size = 3 + read.read_bits(6)

            if dist > stream.decoded_size:
                return False

            stream.put_lookup(dist, size)

    return True


def lzss1(read: ReadRaw, stream: LZSSStream) -> bool:
    ladder, ladder_spec = decode_lzss_format_ladder(read, 4)
    stream.set_ladder_spec(ladder_spec)

    while not stream.complete():
        bit = read.read_bits(1)

        if bit == 0:
            stream.put_literal(read.read_byte())

        else:
            idx = read.read_bits(2)

            dist = ladder[idx].read_distance(read)
            size = 3 + read.read_bits(4)

            if dist > stream.decoded_size:
                return False

            stream.put_lookup(dist, size)

    return True


def lzss2(read: ReadRaw, stream: LZSSStream) -> bool:
    ladder, ladder_spec = decode_lzss_format_ladder(read, 7)
    stream.set_ladder_spec(ladder_spec)

    while not stream.complete():
        bit = read.read_bits(1)

        if bit == 0:
            stream.put_literal(read.read_byte())

        else:
            # bit was set

            idx = read.read_bits(3)

            if idx < 7:
                dist = ladder[idx].read_distance(read)
                size = 3 + read.read_bits(4)

                if dist > stream.decoded_size:
                    return False

                stream.put_lookup(dist, size)

            else:
                count = vli(read, 4)
                bit = read.read_bits(1)

                if bit == 0:
                    # bit was clear

                    for _ in range(count + 1):
                        stream.put_literal(read.read_byte())

                else:
                    # bit was set

                    idx = read.read_bits(3)

                    if idx == 7:
                        return False

                    dist = ladder[idx].read_distance(read)
                    size = read.read_bits(4) + (count << 4) + 3

                    if dist > stream.decoded_size:
                        return False

                    stream.put_lookup(dist, size)

    return True


def lzss3(read: ReadRaw, stream: LZSSStream) -> bool:
    ladder, ladder_spec = decode_lzss_format_ladder(read, 3)
    stream.set_ladder_spec(ladder_spec)

    while not stream.complete():
        bit = read.read_bits(1)

        if bit == 0:
            stream.put_literal(read.read_byte())
            stream.put_literal(read.read_byte())

        else:
            # bit was set

            idx = read.read_bits(2)

            if idx < 3:
                dist = ladder[idx].read_distance(read)
                size = 2 + read.read_bits(3)

                if dist * 2 > stream.decoded_size:
                    return False

                stream.put_lookup(dist * 2, size * 2)

            else:
                count = vli(read, 3)
                bit = read.read_bits(1)

                if bit == 0:
                    # bit was clear

                    for _ in range(count + 1):
                        stream.put_literal(read.read_byte())
                        stream.put_literal(read.read_byte())

                else:
                    # bit was set

                    idx = read.read_bits(2)

                    if idx == 3:
                        return False

                    dist = ladder[idx].read_distance(read)
                    size = read.read_bits(3) + (count << 3) + 2

                    if dist * 2 > stream.decoded_size:
                        return False

                    stream.put_lookup(dist * 2, size * 2)

    return True


def lzss4(read: ReadRaw, stream: LZSSStream) -> bool:
    while not stream.complete():
        stream.put_literal(read.read_byte())

    return True


LZSS_FUNCS = {
    0: lzss0,
    1: lzss1,
    2: lzss2,
    3: lzss3,
    4: lzss4,
}


def diff0(data: bytearray):
    pass


def diff1(data: bytearray):
    # diff on 4bit values

    accumulator = 0

    for i in range(len(data)):
        lo = 0xF & data[i]
        hi = 0xF & (data[i] >> 4)

        accumulator = 0xF & (hi + accumulator)
        hi = accumulator

        accumulator = 0xF & (lo + accumulator)
        lo = accumulator

        data[i] = lo | (hi << 4)


def diff2(data: bytearray):
    # diff on bytes

    accumulator = 0

    for i in range(len(data)):
        accumulator = 0xFF & (data[i] + accumulator)
        data[i] = accumulator


def diff3(data: bytearray):
    # diff on 2 bytes

    accumulator = 0

    for i in range(0, len(data), 2):
        value = data[i] | (data[i + 1] << 8)

        value = (value + accumulator) & 0xFFFF
        accumulator = value

        data[i] = value & 0xFF
        data[i + 1] = (value >> 8) & 0xFF


def diff4(data: bytearray):
    # diff on interleaved bytes (odd and even bytes are filtered separaletedly)

    even_accumulator = 0
    odd_accumulator = 0

    for i in range(0, len(data), 2):
        even = data[i]
        odd = data[i + 1]

        even_accumulator = (even + even_accumulator) & 0xFF
        even = even_accumulator

        odd_accumulator = (odd + odd_accumulator) & 0xFF
        odd = odd_accumulator

        data[i] = even
        data[i + 1] = odd


DIFF_FUNCS = {
    0: diff0,
    1: diff1,
    2: diff2,
    3: diff3,
    4: diff4,
}


class UnpackException(Exception):
    pass


def unpack(data: bytes, offset: int = 0) -> tuple[bytes, str, str]:
    head = int.from_bytes(data[offset : offset + 4], byteorder="little")

    if (head & 0xFF) != 0x70 or (head >> 8) > 0x40000:
        raise UnpackException("Invalid popuri header")

    expected_size = head >> 8

    bit_reader = ReadBits(data, offset + 4)

    format_spec = bit_reader.read_bits(8)

    lzss_fmt = format_spec & 7
    atom_fmt = (format_spec >> 3) & 3
    diff_fmt = (format_spec >> 5) & 7

    if atom_fmt > 2 or lzss_fmt > 4 or diff_fmt > 4:
        raise UnpackException("Invalid header")

    if atom_fmt == 0:
        read = ReadRaw(bit_reader)

    elif atom_fmt == 1:
        read = ReadHuff4(bit_reader)
        if read.huff_tree is None:
            raise UnpackException("Invalid or corrupt Huffman tree")

    elif atom_fmt == 2:
        read = ReadHuff8(bit_reader)
        if read.huff_tree is None:
            raise UnpackException("Invalid or corrupt Huffman tree")

    lzss_stream = LZSSDecoder(expected_size)

    if not LZSS_FUNCS[lzss_fmt](read, lzss_stream):
        raise UnpackException("Invalid or corrupt LZSS stream")

    if lzss_stream.overflew():
        raise UnpackException("LZSS stream overflew")

    # packed_length = bit_reader.current_offset - offset

    DIFF_FUNCS[diff_fmt](lzss_stream.data)

    fmt_spec = f"{atom_fmt}{lzss_fmt}{diff_fmt}"
    lad_spec = lzss_stream.ladder_spec

    return lzss_stream.data, fmt_spec, lad_spec


def main(args):
    try:
        rom_path = args[1]
        rom_addr = args[2]
        out_path = args[3]

    except IndexError:
        return f"Usage: [python 3] {args[0]} ROM OFFSET OUTPUT"

    rom_addr = int(args[2], base=0)

    with open(rom_path, "rb") as f:
        data = f.read()

    offset = rom_addr & 0x1FFFFFF

    try:
        unpacked_data, fmt_spec, lad_spec = unpack(data, offset)

    except UnpackException as e:
        return f"Unpack error: {e}"

    print(
        f'unpacked size = {len(unpacked_data)}, format = "{fmt_spec}", ladder = "{lad_spec}"'
    )

    with open(out_path, "wb") as f:
        f.write(unpacked_data)


if __name__ == "__main__":
    sys.exit(main(sys.argv))
