#!/usr/bin/env fish

set file_size (du -h $argv | awk '{print $1}' | sed 's/\.[0-9]//g')
set file_name (du -h $argv | awk '{print $2}')

echo -e "$file_name is of $file_size"
