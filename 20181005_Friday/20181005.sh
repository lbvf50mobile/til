#!/usr/bin/env bash

# Bash count amount of code lines.

echo "alias x='bash 20181005_Friday/20181005.sh'" 

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo "$green Get lines in all rb files $reset"
# https://stackoverflow.com/a/4210072
# https://unix.stackexchange.com/a/213306

# http://man7.org/linux/man-pages/man1/find.1.html
# -prune
# -prune True; if the file is a directory, do not descend into it.  If
#               -depth is given, false; no effect.  Because -delete implies
#               -depth, you cannot usefully use -prune and -delete together.

find . -path ./git -prune -o   -name '*.rb' -o -name '*.sh' -o -name '*.js' -o -name '*.lua' | xargs wc -l