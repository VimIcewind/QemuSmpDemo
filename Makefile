Test.bin : Test.asm
	nasm Test.asm -o Test.bin
clean :
	rm Test.bin


run : Test.bin
	qemu-system-x86_64 -smp 4 -m 1M -drive file=Test.bin,format=raw
