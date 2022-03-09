#!/usr/bin/env fish

# Author: Dev

set PID (ps aux | grep -i $argv | head -n 1 | perl -pe 's/^\S+\s+//g' | cut -d' ' -f1); kill $PID
