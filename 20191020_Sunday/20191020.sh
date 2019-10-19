#!/usr/bin/env bash

# Bash: check empty?, read STDIN, use functions. (solving question from @liso_soma)

echo "alias x='bash 20191020_Sunday/20191020.sh'" 

# $ echo "test" | x test.output

# https://stackoverflow.com/a/7045517/8574922
# https://stackoverflow.com/a/28786207/8574922
# https://stackoverflow.com/a/1809910/8574922
# https://stackoverflow.com/a/17336953/8574922
# https://stackoverflow.com/a/17336953/8574922
# https://stackoverflow.com/questions/17336915/return-value-in-a-bash-function
# https://ryanstutorials.net/bash-scripting-tutorial/bash-functions.php

function encoder(){
    echo "${1}!"
}



while IFS= read -r line
do
    line=$(encoder $line)
  if [ -z "$1" ]
    then
        echo $line
    else
        echo $line >> $1
    fi
done 
