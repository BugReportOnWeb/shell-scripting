# Shell Scripting

* **exercise.sh:** Simple shell scripting [exercises](https://medium.com/@sankad_19852/shell-scripting-exercises-5eb7220c2252)

* **./liners:** One liner shell (FISH) scripts
    * **file_size.sh:** Script to print the size of the file. `./file_size [FILE]`

    * **finish_ps.sh:** Script to finish a process. `./finish.sh [PROCESS_NAME]` => Also used as a FISH function in _~/.config/fish/functions/_

    * **random_open.sh:** Script to open on a random file from the current directory

    * **make_file.sh:** Script to create an empty file but of specified size. `./make_file [FILE] [SIZE]` => Also used as a FISH funciton in _~/.config/fish/functions/_

    * **assembly_comp.sh:** Script to automate and ease out on assembly building process. `./assembly_comp.sh [ASM_FILE]` => Also used as a FISH function in _~/.config/fish/functions_ 
        ```
        # File structure

        ./[dir]
            | - main
                | - ./[file]        # executale file
            | - src                 # dir to run script on)
                | - [file].asm
                | - [file].o
        ```
