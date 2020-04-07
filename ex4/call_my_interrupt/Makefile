all: first_bootable.bin second_bootable.bin

first_bootable.bin: first_bootable.S
	nasm $^ -f bin -o $@

second_bootable.bin: second_bootable.S
	nasm $^ -f bin -o $@

clean:
	rm *.bin