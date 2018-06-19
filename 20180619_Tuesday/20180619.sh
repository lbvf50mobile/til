#!/usr/bin/env bash

# Bash: color, stdin, stdout.
# https://stackoverflow.com/a/20983251/8574922

echo "alias x='bash 20180619_Tuesday/20180619.sh'"

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo "${green}STDIN:${reset}"
echo "This is read from input" | 20180619_Tuesday/cat.sh

echo "${green}STDOUT:${reset}"
echo "this text will be upper case" | 20180619_Tuesday/stdupper.sh | head


