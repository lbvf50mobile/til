#!/usr/bin/env bash
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo "${green}Parameters:${reset}"
echo $@
echo "${green}Dollar Hash:${reset}"
echo $#




# extract keys.
one=
two=
arg=

while (("$#")); do
case "$!" in
    -o)
    echo "${green}-o key:${reset} $1"
    shift 
    ;;
    *) 
    echo "${red}star:${reset} $1"
    shift 
    ;;
    esac
done

