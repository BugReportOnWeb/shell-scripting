#!/usr/bin/env fish

dd if=/dev/zero of=$argv[1] count=$argv[2] bs=1M > /dev/null

