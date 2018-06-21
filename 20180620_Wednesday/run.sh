#!/usr/bin/env bash
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo "${green}1) Parameters \$@:${reset}"
echo $@
echo "${green}\$#:${reset}"
echo $#




# extract keys.
one=
two=
arg=

while (("$#")); do
case "$1" in
    -o)
    echo "${green}-o key:${reset} $1"
    one=$2
    shift 2
    ;;
    -t)
    echo "${green}-t key:${reset} $1"
    two=$2
    shift 2
    ;;
    *) # Preser positional arumetns
    P1="$P1 $1"
    shift 
    ;;
    esac
done
echo "${green}2) Parameters \$@:${reset}"
echo $@

# set positional arguments in their proper place
echo "${red}eval set -- \"\$P1\"${reset}"


eval set -- "$P1"

echo "${green}3) Parameters \$@:${reset}"
echo $@

echo "${green}One:${reset} $one"
echo "${green}Two:${reset} $two"
echo "${green}\$1:${reset} $1"
echo "${green}\$2:${reset} $2"
echo "${green}\$3:${reset} $3"

