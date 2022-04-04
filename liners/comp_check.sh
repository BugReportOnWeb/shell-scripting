#!/usr/bin/env fish

set EXT (echo $argv | cut -d. -f2)

function main
    switch $EXT
        case c
            gcc $argv && ./a.out
        case cpp
            g++ $argv && ./a.out
        case asm
            nasm -f elf32 $argv && ld -m elf_i386 (echo $argv | cut -d. -f1).o && ./a.out
        case '*'
            return 1
    end
end
main $argv
