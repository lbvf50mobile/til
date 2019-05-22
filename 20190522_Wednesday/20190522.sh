#!/usr/bin/env bash
echo "alias x='bash 20190522_Wednesday/20190522.sh'" 

# BASH new line in double quote strings.

# https://stackoverflow.com/a/2991708/8574922


red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
nl=$'\n'

echo "${red}Call 297. Ruby a.sort_by{|x| -x}; and 298. JS x.slice(-1);${reset} ${nl}"

echo "${green}Ruby sort in descending order by a.sort{|x| -x}${reset} ${nl}"
ruby 20190522_Wednesday/20190522.rb

echo "${green}Get lest element of string and array by x.slice(-1)${reset} ${nl}"
node 20190522_Wednesday/20190522.js
