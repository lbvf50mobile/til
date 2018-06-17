
# https://stackoverflow.com/questions/6980090/how-to-read-from-a-file-or-stdin-in-bash
# http://wiki.bash-hackers.org/syntax/pe#case_modification
A="${1:-/dev/stdin}"

if [ -n "$1" ]; then
    echo "this is PARAMETER"
    echo ${A^^}
    echo $A
else
    echo "This is PIPE "
    cat "${1:-/dev/stdin}" # this Works
    echo "Var:"
    cat "$A" # this dose not works

    echo "${1:-/dev/stdin}" # but they have the save value
    echo "$A" 
    [ "$A" = "${1:-/dev/stdin}" ] && echo "they are equal" || echo "they are different"
fi