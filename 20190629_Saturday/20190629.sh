#!/usr/bin/env bash
echo "alias x='bash 20190629_Saturday/20190629.sh'" 

# BASH Indirection (thnx: @ob_hs).

# https://wiki.bash-hackers.org/syntax/pe#indirection
# thnx: @ob_hs

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
a='this is an A  variable'
b='a'
echo "Bash ${green}Indirection${reset}"
echo ${!b}