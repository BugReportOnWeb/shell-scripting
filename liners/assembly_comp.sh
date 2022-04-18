#!/usr/bin/env fish

set NAME (echo $argv | cut -d. -f1)
set EXT (echo $argv | cut -d. -f2)
set OBJECT "$NAME.o"

function main
    if test $EXT = "asm"
        nasm -f elf32 $argv -o $OBJECT && ld -m elf_i386 $OBJECT -o ../main/$NAME && ../main/$NAME || echo "Error occured!"
    else
        echo "[*.asm] => acceptable argument"
        return 1
    end
end

main $argv
