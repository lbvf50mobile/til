echo "alias x='bash 20180818_Saturday/20180818.sh'" 
# Compare Ruby and Lua speed.
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
echo "$green 1 000 000 times caclulate fact(20): $reset"

echo "$red Lua: $reset"
time lua 20180818_Saturday/20180818.lua

echo "$red Ruby: $reset"
time ruby 20180818_Saturday/20180818.rb

echo "$red Ruby x.downto(1).reduce(:*): $reset"
time ruby 20180818_Saturday/20180818_short.rb