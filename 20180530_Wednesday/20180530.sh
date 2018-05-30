# wc lines words chars (+ newlines)
FL="20180530_Wednesday/file"
echo "12" > $FL
echo "12" >> $FL
echo "12" >> $FL
echo "1 2" >> $FL
cat $FL
wc $FL
echo 1 > $FL
wc $FL