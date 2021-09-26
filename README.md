# simple bootloader

### how do i learn about this?

read the first 13 pages of: https://www.cs.bham.ac.uk/~exr/lectures/opsys/10_11/lectures/os-dev.pdf

### what tools do i need?

install qemu

```
brew install qemu
```

(or do the equivalent for your platform)

### what are the files here?

`boot_sect.hex` - bootloader code, in hex

`boot_sect.bin` - bootloader executable (output of either hex conversion or assembly)

`boot_sect.asm` - same bootloader code, in asm

### how do i build from hex file?

Directly from hexdump

```
xxd -r -p boot_sect.hex boot_sect.bin
```

same thing from Makefile:

```
make hex
```

### how do i inspect the binary file in hex format?

hex dump using:

```
xxd bootsect.bin
```

### how do i use this bootloader in an emulator?

```
qemu-system-x86_64 boot_sect.bin
```

or, use the qemu binary for your platform

### how do i build the same bootloader using assembly?

```
nasm boot_sect.asm -f bin -o boot_sect.bin
```

same thing from Makefile:

```
make asm
```

### how do i install nasm if i don't have it?

```
brew install nasm
```

or, equivalent for your platform.


