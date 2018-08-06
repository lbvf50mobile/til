#!/usr/bin/env bash

# BASH ltrim and trim with #? and %?.

echo "alias x='bash 20180806_Monday/20180806.sh'" 

STR="1center2"
echo $STR
echo ${STR#?}
echo ${STR%?}

# http://wiki.bash-hackers.org/syntax/pattern
# https://www.tldp.org/LDP/abs/html/string-manipulation.html
# https://stackoverflow.com/questions/23020414/what-does-mean-in-bash
# https://www.gnu.org/savannah-checkouts/gnu/grep/manual/grep.html#General-Output-Control