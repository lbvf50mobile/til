#!/usr/bin/env bash
echo "alias x='bash 20190325_Monday/20190325.sh'" 

# BASH cut, Ruby stdin, and some interesting behaviour.


red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

z=$(git log -20 --oneline --grep="^2" | cut -c 9-11 | ruby -e 'p $stdin.read.split("\n").map(&:to_i).max')
echo "Max number is ${green}$z${reset}"

echo "Max number is $(green)$z$(reset)"
