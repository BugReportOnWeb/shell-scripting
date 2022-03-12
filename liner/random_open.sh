#!/usr/bin/env fish

open (ls | cut -d\n -f(random 1 (ls | wc -l)))
