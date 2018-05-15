# X= set empty sting,  -z set true to empty string.

# https://www.thegeekstuff.com/2011/10/grep-or-and-not-operators/

X=
Y=2

test -z $X && echo "X dose not exizts" || echo "X exists"
test -z $Y && echo "Y dose not existst" || echo "Y exists"
test -z $Z && echo "Z dose not existst" || echo "Z exists"

echo "X=\|Y=\|Z="
set | grep "X=\|Y=\|Z="
