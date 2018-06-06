# Script for printing positonal parameters.
echo "Amount of Positional parameters: " $#

for x in "$@"
do
echo $x
done
