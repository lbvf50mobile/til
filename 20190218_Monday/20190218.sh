#!/usr/bin/env bash

echo "alias x='bash 20190218_Monday/20190218.sh'" 

# BASH Arithmetic evaluation of octal / hexadecimal constants by @kitten256

# https://www.tldp.org/LDP/abs/html/testconstructs.html#DBLBRACKETS

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo "${red}Octal${reset} and ${green}hexadecimal ${reset} values"

[[ 0x10 -eq 16 ]]  && echo "${green}yes${reset}"  || echo "${red}no${reset}"
[[ 020 -eq 16 ]] && echo "${green}yes${reset}" || echo "${red}no${reset}"