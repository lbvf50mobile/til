# tr and dd.
echo "alias x='bash 20180707_Saturday/20180707.sh'" 
tr -dc A-Za-z0-9 </dev/urandom | dd of=/tmp/test bs=1M count=10 status=progress conv=sync iflag=fullblock
fold -w 1000 -s /tmp/test > /tmp/test2
[ -f /tmp/test ] && echo "test File exits" || echo "test No file"
[ -f /tmp/test2 ] && echo "test2 File exits" || echo "test2 No file"
rm /tmp/test /tmp/test2
[ -f /tmp/test ] && echo "test File exits" || echo "test No file"
[ -f /tmp/test2 ] && echo "test2 File exits" || echo "test2 No file"
