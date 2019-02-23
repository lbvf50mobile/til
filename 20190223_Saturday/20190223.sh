#!/usr/bin/env bash
echo "alias x='bash 20190223_Saturday/20190223.sh'" 

# https://youtu.be/Zd1DuBiAHUk?t=5629

# BASH echo use newline as delemiter. (example by @fenek67)

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo "${red} ls -1 | tail -5 ${reset}"
ls -1 | tail -3

echo "${green}save output into the x variable ${reset}"
x=`ls -1 | tail -3`

echo "${green}Now print it's with one echo, and use newlines as delimiters between arguments.${reset}"

echo $x

echo "${green}And print in one argument.${reset}"

echo "$x"
