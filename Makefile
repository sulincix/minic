build: clean
	mkdir build
	gcc -o build/libminic.so -shared src/*.c -nostdlib -O0 -nostdinc -Isrc -Wno-all -Wno-builtin-declaration-mismatch

test-bin:
	gcc src/start/* test/main.c -Lbuild -Isrc/ -lminic -o build/main -nostdlib -O0
	LD_LIBRARY_PATH=build ./build/main
clean:
	rm -rf build
