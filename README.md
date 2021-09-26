# bochs-test

### reading

source: https://www.cs.bham.ac.uk/~exr/lectures/opsys/10_11/lectures/os-dev.pdf

### prerequisites

install bochs

```
brew install bochs
```

(or do the equivalent for your platform)

### files

`bochsrc` - bochs configuration file

`boot_sect.hex` - bootloader code, in hex

`boot_sect.bin` - bootloader executable (output of either hex conversion or assembly)

`boot_sect.asm` - bootloader cond, in asm

### build from hex

Directly from hexdump

```
xxd -r -p boot_sect.hex boot_sect.bin
```

same thing from Makefile:

```
make hex
```

### compare the binary output to hex source

hex dump using:

```
xxd bootsect.bin
```

### run in emulator

```
bochs
```

### build using assembly

```
nasm boot_sect.asm -f bin -o boot_sect.bin
```

same thing from Makefile:

```
make asm
```

### if you don't have nasm

```
brew install nasm
```

or, equivalent for your platform.


