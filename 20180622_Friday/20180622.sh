#!/usr/bin/env bash

# eval set -- "$VAR"

echo "alias x='bash 20180622_Friday/20180622.sh'" 
r=`tput setaf 1`
g=`tput setaf 2`
rs=`tput sgr0`

VAR="one two three"

echo "VAR = $VAR"

echo "${r}set -- \"\$VAR\"${rs}"
set -- "$VAR"
echo "\$@ =  $@"
echo "\$1 = $1 "
echo "\$2 = $2 "
echo "\$3 = $3 "

echo "${r}eval set --\"\$VAR\"${rs}"
eval set -- "$VAR"
echo "\$@ = $@"
echo "${g}\$1 = $1${rs} "
echo "\$2 = $2 "
echo "\$3 = $3 "
