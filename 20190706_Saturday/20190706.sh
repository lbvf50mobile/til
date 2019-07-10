echo "alias x='bash 20190706_Saturday/20190706.sh'" 

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo "${red}Change working directory: ${reset}${green}(but it dose not harms parent process)${rest}"
echo "${green}browser-sync start --file 20190706_Saturday/index.html --server${reset}"
# does not works :(
# https://scotch.io/tutorials/how-to-use-browsersync-for-faster-development
# https://github.com/jwald200/browser_sync_proxy
# browser-sync start --proxy "localhost:4567" # --files "20190706_Saturday/static/*.*"
cd 20190706_Saturday/
browser-sync start --file index.html --server 