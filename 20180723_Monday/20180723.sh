#!/usr/bin/env bash

# Git hash-object.

# https://youtu.be/nHkLxts9Mu4

echo "alias x='bash 20180723_Monday/20180723.sh'" 
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
STRING="Hello world"
echo "${green}String:${reset} $STRING"
echo $STRING | git hash-object --stdin
HASH=$(echo $STRING | git hash-object --stdin)
echo "${green}Hash:${reset} $HASH"