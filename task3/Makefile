.PHONY:test,clean
test:
	arm-linux-gnueabihf-gcc test.S -o test.out
	qemu-arm -L /usr/arm-linux-gnueabihf ./test.out
clean:
	rm -fr test.out