#!/usr/bin/env bash

# 'rm -f file' removes 'chomd a-w file'.
echo "alias x='bash 20180708_Sunday/20180708.sh'" 
touch tmpfile ; ls -alF tmpfile; 
chmod a-wxr tmpfile; ls -alF tmpfile; 
 rm -f tmpfile; 
 [ ! -e tmpfile ] && echo "there is no file"