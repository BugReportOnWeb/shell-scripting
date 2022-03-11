#!/usr/bin/env fish

# Author: Dev

set PID (ps aux | grep -i $argv | head -n 1 | awk '{print $2}')
kill $PID
