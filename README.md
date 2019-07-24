## Run
```
# Run once at the first time
chmod +x ./libload.sh && ./libload.sh

# Run every time
make && ./test
```

## Debug
```
gdb libsilly.so
```

## Examining
```
file test
strings test

# Get all function in a library
nm libsilly.so
# Get only one function
nm libsilly.so | grep silly_run
```

## Dynamic Hacking
```
gcc -Wall -fPIC -shared -o hackingSilly.so hackingSilly.c -ldl
LD_PRELOAD=./hackingSilly.so ./test
```

## Inspiration
https://stackoverflow.com/a/36183669/3765825