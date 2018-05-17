# ruby -F, -ane 

# https://robm.me.uk/ruby/2015/10/31/dollar-underscore.html
# https://robm.me.uk/ruby/2013/11/20/ruby-enp.html

echo "HI"

echo "1,2,3, one" > 20180517_Thursday/csv
echo "4,5,6, two" >> 20180517_Thursday/csv
echo "7,8,9, tree" >> 20180517_Thursday/csv

cat 20180517_Thursday/csv

echo "Fire the Ruby!"

ruby -F, -ane 'print $F[1] if /two/'  20180517_Thursday/csv
