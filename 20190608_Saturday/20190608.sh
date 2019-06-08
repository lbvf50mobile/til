echo "alias x='bash 20190608_Saturday/20190608.sh'" 

# JS/Ruby [^], and 'g' Regex flag in JS String.prototype.match.

# https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1/solutions/javascript
# https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp#Parameters
# https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/match#Return_value

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo "Run JS ${green}[^]${reset} - ${green}Mach any char${reset}:"
node 20190608_Saturday/20190608.js
echo "Run Ruby ${red}[^] - reject parse source code because empty char-class.${reset}:"
ruby 20190608_Saturday/20190608.rb