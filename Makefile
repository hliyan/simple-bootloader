hex:
	xxd -r -p boot_sect.hex boot_sect.bin

asm:
	nasm boot_sect.asm -f bin -o boot_sect.bin

run_x86:
	qemu-system-x86_64 boot_sect.bin
