#!/usr/bin/env fish

# Author: Dev

ps aux | grep -i $argv | head -n 1 | awk '{print $2}' | xargs -r kill
