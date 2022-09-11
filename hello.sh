#!/bin/sh

nasm -f elf64 -o hello.o hello.asm
ld -o hello hello.o
./hello
