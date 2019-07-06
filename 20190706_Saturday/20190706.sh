echo "alias x='bash 20190706_Saturday/20190706.sh'" 

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo "${green}localhost:4567${reset}"
# does not works :(
# https://scotch.io/tutorials/how-to-use-browsersync-for-faster-development
# https://github.com/jwald200/browser_sync_proxy
# browser-sync start --proxy "localhost:4567" # --files "20190706_Saturday/static/*.*"