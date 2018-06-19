#!/usr/bin/env bash

# Sho that cat reads and empty STDIN
# https://www.quora.com/How-are-stdin-and-stdout-implemented
# https://stackoverflow.com/questions/36615360/in-linux-why-is-there-a-global-dev-stdin-file-for-all-processes/36618319#36618319

V='/dev/stdin'
echo -n "1)"
cat $V
echo -n "2)"
cat "${1:-/dev/stdin}"
echo -n "3)"
cat "/dev/stdin"
echo ""
