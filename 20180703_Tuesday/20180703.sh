# Shell special parameters plane and from 'ruby -e'

echo "alias x='bash 20180703_Tuesday/20180703.sh'" 


# https://stackoverflow.com/a/2400/8574922
# http://tldp.org/LDP/abs/html/internalvariables.html
# https://stackoverflow.com/a/5163260/8574922
echo "pid: $$" # pid 14504
echo "option flags: $-" # hB
ruby -e 'p `echo 123`' # 123\n
ruby -e 'p `echo $$`' # $$\n
ruby -e 'p `echo $-`' # $-\n
