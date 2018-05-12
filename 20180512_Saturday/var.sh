# Here I crate var.
echo "(var.sh) print V20180512"
printenv V20180512

echo "(var.sh) Create var"
V20180512="This is a var V20180512"
export V20180512

echo "(var.sh) Print"
printenv V20180512
ruby -e "p ENV['V20180512'] ? '(var.sh) var exists' : '(var.sh) no var' "
