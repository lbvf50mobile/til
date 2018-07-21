#!/usr/bin/env bash

# BASH delete longets match from front.

echo "alias x='bash 20180721_Saturday/20180721.sh'" 

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

STR="Start12345End88Satrt123End1234End--Start1123Eend"
echo "${green}String itself:${reset}"
echo $STR
echo "${green}Delete LONGEST match from front:${reset}"
echo ${STR##Start*End}
