echo $1
echo "$1"
X="HA"
echo "$X"
if [ -z "$X" ]; then
    echo "Dose not set X"
else
    echo "Tis is set"
fi

if [ -z "$Y" ]; then
  echo "Y dose not set"
fi

if [ ! -z "$X" ]; then
    echo "X is set"
fi