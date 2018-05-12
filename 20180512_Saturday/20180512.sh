# Dot and source, create/delete environment variable.

function check_var(){
    ruby -e "p ENV['V20180512'] ? '(MAIN) var exists' : '(MAIN) NO var' "
}

echo "Start interesting tutorial about Environment variables."
check_var

echo "Call script with a ./"
./20180512_Saturday/var.sh
check_var

echo "Call script with a 'source' "
source 20180512_Saturday/var.sh
check_var

echo "Delete environment variable"
export -n V20180512
check_var

