# '$ cat /proc/self/stat' is the analog of '$ echo $$'
# https://www.tldp.org/LDP/Linux-Filesystem-Hierarchy/html/proc.html
echo "alias x='bash 20180704_Wednesday/20180704.sh'"

echo "1) echo"
echo $$
echo "2) cat"
cat /proc/self/stat
echo ""
echo "3) cat from ruby -e"
ruby -e 'p `cat /proc/self/stat`'
