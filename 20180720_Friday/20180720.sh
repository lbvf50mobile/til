#!/usr/bin/env bash

# Bash substring removal (front/back).

# https://www.tldp.org/LDP/abs/html/string-manipulation.html

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo "alias x='bash 20180720_Friday/20180720.sh'" 

STRING="heyWAYhey"
echo $STRING "${green} - String itself ${reset}"
echo ${STRING#hey} "${green} - Front substring removal${reset}" # Front substring removal
echo ${STRING%hey} "${green} - Back substring removal${reset}" # Back substring removal