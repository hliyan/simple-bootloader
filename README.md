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

`boot_sect.bin` - bootloader executable, converted directly from hex

### build

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

### run

```
bochs
```
