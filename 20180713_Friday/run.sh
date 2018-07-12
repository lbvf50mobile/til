#!/usr/bin/env bash

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo "This is one: ${green}${ONE}${reset}"
echo "This is two: ${green}${TWO}${reset}"