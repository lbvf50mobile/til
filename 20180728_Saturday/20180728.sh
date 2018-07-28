#!/usr/bin/env bash

# BASH unix way silence on success: no-op :, echo to stderr.

# https://stackpointer.io/script/shell-script-echo-to-stderr/355/ # Echo to stderr
# https://stackoverflow.com/a/17583599/8574922 # No-op command in shell
# https://askubuntu.com/a/625230 # stdin and stdout in files
# https://unix.stackexchange.com/a/24340 # pipe stderr

echo "alias x='bash 20180728_Saturday/20180728.sh'" 

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

[ 2 = 2 ] && : || ( echo "${red}Error${reset}" >&2 ; exit 1)
[ 2 = 4 ] && : || ( echo "${red}Error${reset}" >&2 ; exit 1)