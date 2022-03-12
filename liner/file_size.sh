#!/usr/bin/env fish

du -h $1 | awk '{ print $1 }' | sed 's/\.[0-9]//g' | xargs -r echo "File size is:"
