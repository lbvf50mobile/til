echo "alias x='bash 20191028_Monday/20191028.sh'" 

# Bash: no-op : and Sed -n to suppress output; Leetcode: tenth-line;

# https://leetcode.com/problems/tenth-line/submissions/
# https://stackoverflow.com/questions/6022384/bash-tool-to-get-nth-line-from-a-file
# https://stackoverflow.com/questions/18668556/comparing-numbers-in-bash
# https://gist.github.com/lbvf50mobile/d6c69d78fb0bf8dd7e87de39800ba962
# https://www.gnu.org/software/sed/manual/sed.html#Overview

head -2 file.txt | tail -1
wc -l file.txt 

A=$(cat file.txt | wc -l)
if [ "10" -gt $A  ]; then
    tail -1  file.txt
else
    head -10 file.txt | tail -1
fi

echo "Line 11\n"
sed -n "11p" file.txt

echo "line 2\n"
sed -n "2p" file.txt