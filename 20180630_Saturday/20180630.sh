echo "alias x='bash 20180630_Saturday/20180630.sh'" 
# https://goo.gl/mfssSv
export TIMESTAMP_LAST=`date +"%s"`
export TIMESTAMP_NOW=`date +"%s"`


time for i in {1..10}; do
    (echo "Some test"; sleep 1) |while read -r line ; do
      echo "I: $i"
      TIMESTAMP_NOW=`date +"%s"`
      echo "NOW : $TIMESTAMP_NOW"
      echo "LAST: $TIMESTAMP_LAST"
      echo "DIF : $((${TIMESTAMP_NOW}-${TIMESTAMP_LAST}))"
      TIMESTAMP_LAST=$TIMESTAMP_NOW
      echo "LAST: $TIMESTAMP_LAST"
    done
done