# Shell expansion `cat folder/{one,two,three}`

echo "hi"
touch 20180519_Saturday/{one,two,three}
ls 20180519_Saturday
echo "one!" > 20180519_Saturday/one
echo "two two!" > 20180519_Saturday/two
echo "three three three!" > 20180519_Saturday/three

cat 20180519_Saturday/{one,two,three}
