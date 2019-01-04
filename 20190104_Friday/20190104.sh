#!/usr/bin/env bash

# BASH cp -t
echo "alias x='bash 20190104_Friday/20190104.sh'" 

# https://www.shellscript.sh/tips/cp-t/
# https://www.computerhope.com/unix/ucp.htm 
# git log -10 --oneline --grep="^2"

git log -10 --oneline --grep="^2"
echo "-- SORT --"
git log -10 --oneline --grep="^2" | ruby -e '
puts STDIN.read.split("\n").sort{|x,y| y[8..11].to_i <=> x[8..11].to_i}.join("\n")
'

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
echo "${green}Hi${reset}"
echo "${green}Hi${reset}" | ruby -e 'puts STDIN.read'
