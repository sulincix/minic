build: clean
	mkdir build/start -p
	$(CC) -c start/exit.s -o build/start/exit.o -Ilibminic -nostdlib -nostdinc -Wno-all
	$(CC) -c start/start.s -o build/start/start.o -Ilibminic -nostdlib -nostdinc
	$(CC) -c start/libc_main.c -o build/start/libc_main.o -Ilibminic -nostdlib -nostdinc
	$(CC) $(wildcard libminic/*.c) -nostdlib -nostdinc -Ilibminic -shared -o build/libminic.so

test:
	./bin/gcc-minic test-files/main.c -o build/main
	LD_LIBRARY_PATH=build ./build/main
clean:
	rm -rf build
