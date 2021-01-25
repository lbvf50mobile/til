echo "alias x='bash 20210125_Monday/20210125.sh'" 

# 793. Serial or parallel process runing by a pipline?"

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo "${red}Does pipelines run process at the same time or one by one?${reset}"

# https://stackoverflow.com/questions/16548528/command-to-get-time-in-milliseconds
# https://unix.stackexchange.com/questions/37508/in-what-order-do-piped-commands-run/37597#37597?newreg=e618778c49774e3f9e19bdd2d39a6e08

start=$(date +"%T.%N")
echo "${green}${start}${reset}"
pwd
