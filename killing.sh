#!/usr/bin/env fish

# Author: Dev

set PID (ps aux | grep -i $argv | head -n 1 | cut -d' ' -f8); kill $PID
