#!/usr/bin/env bash
echo "alias x='bash 20190503_Friday/20190503.sh'" 

# BASH how to remove strings without digits (@my71kg asked this question).
# https://robm.me.uk/ruby/2013/11/20/ruby-enp.html

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo "${green}BASH how to remove strings without digits (@my71kg asked this question) ${reset}"
cat tmp.js
echo ""
echo "${green}--------------${reset}"
cat tmp.js | ruby -ne 'print if  /\d/' > answer.js
cat answer.js

# real    0m0.966s
# user    0m0.060s
# sys     0m0.197s
