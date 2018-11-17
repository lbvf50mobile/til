#!/usr/ben/env bash

# BASH Making menus with the select build-in.

echo "alias x='bash 20181117_Saturday/20181117.sh'" 

# http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_09_06.html

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo "$green Select something:$reset"

select FILENAME in one two three;
do
    echo "you picked $green$FILENAME$reset"
    break # without break it will scroll endless
done

echo "Now with $red""CASE$reset:"

select ITEM in one two three;
do
    case $ITEM in
    "one")
        echo "And this is ONE!"
        break
        ;;
    "two")
        echo "And this is TWO!"
        break
        ;;
    "three")
        echo "And ths is THREE!"
        break
        ;;
    *)
        echo "And this is something new!"
        break
        ;;
    esac
done