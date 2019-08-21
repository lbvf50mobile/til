#!usr/bin/env bash
echo "alias x='bash 20190821_Wednesday/20190821.sh'" 

# BASH read -p -n1 "prompt: " variable; (@poruncov, @slaytor)

echo "Question?"

# https://www.computerhope.com/unix/bash/read.htm
# https://stackoverflow.com/questions/8725925/how-to-read-just-a-single-character-in-shell-script
# https://unix.stackexchange.com/questions/340440/bash-test-what-does-do
# https://stackoverflow.com/questions/16489809/emulating-a-do-while-loop-in-bash
while 
    read -p "1 - yes, 2 - no: " int
    [[ "$int" =~ [^12] ]]
do
    :
done

if [[ $int ==  1 ]]; then
    echo "command: 1"
    echo "command: 2"
elif [[ $int == 2 ]]; then
    echo "command: 3"
    echo "command: 4"
fi
