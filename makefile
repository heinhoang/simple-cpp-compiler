all:
	gcc -Wall -fPIC -c *.c
	gcc -shared -Wl,-soname,libsilly.so -o libsilly.so *.o
	gcc -Wall -L./ test.c -lsilly -o test -Wl,-R./
	# rustc -L./ test-rust.rs