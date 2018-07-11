#!/usr/bin/env bash
# Using [[]] and using $() in BASH. And printf. 
echo "alias x='bash 20180712_Thursday/20180712.sh'" 
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

COMPILER=gcc
COMPILER_PATH=the_path
echo "${green}1) [[]] ${reset}"
[[ COMPILER != "gcc" ]] && printf %s "COMPILER != gcc" || printf %s "COMPILER === gcc" 
echo ""
echo "${green}2) \$()${reset}"
COMPILER=notgcc
echo "$( [ ${COMPILER} != "gcc" ] && printf %s ". ${COMPILER_PATH}/compilervars.sh intel64" )"