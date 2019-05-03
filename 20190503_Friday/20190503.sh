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
echo "${green}----Use Grep-------${reset}"
cat tmp.js | grep -e "[0-9]" > answer.js
echo "--now Answer JS-"
cat answer.js
echo "---------------"
cat tmp.js | grep -e "[0-9]"
echo "--pure grep ------"
grep -e "3" tmp.js > answer.js
cat answer.js
echo "---pure grep for digits"
grep -e "[0-9]" tmp.js > answer.js
cat answer.js
