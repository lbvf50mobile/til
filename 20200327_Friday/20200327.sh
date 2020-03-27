#!/usr/bin/env bash

# Bash: ARGV[0].

echo "alias x='bash 20200327_Friday/20200327.sh'" 
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
# Bash ARGV 0.
echo "${green}print \$0:${reset}"
echo $0
