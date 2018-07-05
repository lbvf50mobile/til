# Arguments for date and sprintf.

echo "alias x='bash 20180705_Thursday/20180705.sh'" 

echo "1) date with arguments:"
# https://www.thegeekstuff.com/2013/05/date-command-examples/
# http://man7.org/linux/man-pages/man1/date.1.html
# https://www.cyberciti.biz/tips/linux-unix-get-yesterdays-tomorrows-date.html
echo $(date +"%d %b")
echo $(date +"%-d %b")
echo "Date:"$(date +"%d") ; echo  "Date:"$(date +%_d);  echo "Date:"$(date +%-d)
echo "Date:"$(date --date='tomorrow' +"%_d")

echo "2) sprntf"
# https://apidock.com/ruby/Kernel/sprintf
# https://ruby-doc.org/core-2.5.1/Kernel.html#method-i-sprintf
echo "2.1) Using Srpntf"
ruby -e '(100..102).each{|x| p [x,sprintf("%08b",x)]}'
echo "2.2) Just converto from digit to string"
ruby -e '(100..102).each{|x| p [x,x.to_s(2)]}'
