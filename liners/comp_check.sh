#!/usr/bin/env fish

set EXT (echo $argv | cut -d. -f2)

function main
    switch $EXT
        case c
            gcc main.c && ./a.out
        case cpp
            g++ main.cpp && ./a.out
        case asm
            nasm -f elf32 main.asm -o main.o && ld -m elf_i386 main.o -o a.out && ./a.out
        case '*'
            return 1
    end
end
main
