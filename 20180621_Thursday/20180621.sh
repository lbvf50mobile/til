#!/usr/bin/env bash

# Bash eval.
# https://unix.stackexchange.com/a/23117

r=`tput setaf 1`
g=`tput setaf 2`
rs=`tput sgr0`
echo "${g}Bash eval.${rs}"


echo "alias x='bash 20180621_Thursday/20180621.sh'" 

A="This is content of A Variable."
B='A'

echo "${r}eval C='\$'\$B${rs}"
eval C='$'$B
echo "${g}echo \$C${rs}"
echo $C
