# Ruby $_ ans single quote.

echo "hi"
seq 2 > 20180516_Wednesday/seq
ruby -ne "print $_" 20180516_Wednesday/seq
ruby -ne "print " 20180516_Wednesday/seq
ruby -ne 'print $_' 20180516_Wednesday/seq

seq 200 > 20180516_Wednesday/seq
ruby -ne 'print if /15$/' 20180516_Wednesday/seq
