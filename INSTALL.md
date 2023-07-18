# Installation

## New instructions

Better instructions will come eventually.

- get a `arm-none-eabi` toolchain (devkitARM probably works)
- get [notyourav/agbcc] (or another fork of agbcc that includes agbcp) and install it into this repository. You can use the install_agbcp.sh script in the tools folder to achieve that.
- get the base rom, put it in root directory as `baserom.gba`
- `make compare`

[notyourav/agbcc]: https://github.com/notyourav/agbcc

## Old instructions

Install the devkitARM toolchain of devkitPro as per [the instructions on their wiki](https://devkitpro.org/wiki/devkitPro_pacman).

Inside the included MSYS2 environment run:

    pacman -S gcc git

To set up the repository:

	git clone https://github.com/not-alons/hmfomt
	git clone https://github.com/pret/agbcc

	cd ./agbcc
	./build.sh
	./install.sh ../hmfomt

	cd ../hmfomt

Place a .gba ROM of Harvest Moon: Friends of Mineral Town (USA) in your hmfomt folder and rename it to "baserom".

To build **hmfomt.gba** and confirm it matches the official ROM image:

	make compare

If an OK is returned, then the installation went smoothly.
