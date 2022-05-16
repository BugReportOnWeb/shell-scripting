# Shell Scripting

<h1 id="header" align="center">
    Shel Scripting
    <div id="badges">
        <img src="https://img.shields.io/github/last-commit/BugReportOnWeb/shell-scripting" />
    </div>
</h1>

* **changer.sh:** Script to rename all the elements in a directory.

* **./auto:** Script to automate the joining of Uni lectures
    * **data.sh**: File that contains the external data for the script (Mainly lecture links)
    * **main.sh**: The auto script. Just use `./main.sh` to run.

* **./liners:** One liner shell (FISH) scripts.
    * **file_size.sh:** Script to print the size of the file. `./file_size [FILE]`

    * **finish_ps.sh:** Script to finish a process. `./finish.sh [PROCESS_NAME]` => Also used as a FISH function in _~/.config/fish/functions/_

    * **random_open.sh:** Script to open on a random file from the current directory

    * **make_file.sh:** Script to create an empty file but of specified size. `./make_file [FILE] [SIZE]` => Also used as a FISH funciton in _~/.config/fish/functions/_

    * **assembly_comp.sh:** Script to automate and ease out on assembly building process. `./assembly_comp.sh [ASM_FILE]` => Also used as a FISH function in _~/.config/fish/functions_ 
        ```
        # File structure

        /[dir]
            | -- /main
                | -- ./[file]        # executale file
            | -- /src                # dir to run script on
                | -- [file].asm
                | -- [file].o
        ```
        
    * **start_iwd.sh:** Script to check if iwd is running of not and if the latter, start the iwd and launch iwctl for network configuration. => Also used as a FISH function in _~/.config/fish/functions_

    * **comp_check.sh:** Script to automate the compiling process for C/C++/Assembly/Rust files. `./comp_check.sh [FILE]` => Also used as a FISH funciton in _~/.config/fish/functions/_
