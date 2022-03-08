#!/usr/bin/env fish

# Author: Dev

set PID (ps aux | grep -i $1 | head -n 1 | cut -d' ' -f8); kill $PID
