#!/usr/bin/env bash

# Git cat-file.

echo "alias x='bash 20180724_Tuesday/20180724.sh'" 

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

BASE_DIR=20180724_Tuesday



echo "${green}Crete Git:${reset}"
if ( [ -d $BASE_DIR"/temp_git" ]); then
    echo "${green} it exists ${reset}"
else  
    git init $BASE_DIR"/temp_git"
fi

echo "${green}Enter folder:${reset}"
cd $BASE_DIR"/temp_git"
pwd

HASH=$( echo "Apple Pie" | git hash-object -w --stdin)
echo "${green}HASH${reset}: $HASH"

git cat-file $HASH -p

echo "${green}Come back:${reset}"
cd ../..
pwd

echo "${green}Remove Git:${reset}"
if ( [ -d $BASE_DIR"/temp_git" ]); then
    rm -rf $BASE_DIR"/temp_git"
    echo "${red}Remove${reset}"
else
    echo "There is no temp_git"
fi
