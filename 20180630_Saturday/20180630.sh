echo "alias x='bash 20180630_Saturday/20180630.sh'" 
export TIMESTAMP_LAST=`date +"%s%N"`
export TIMESTAMP_NOW=`date +"%s%N"`


time for i in {1..10}; do
    (echo "Some test"; sleep 1) |while read -r line ; do
      echo "I: $i"
      TIMESTAMP_NOW=`date +"%s%N"`
      echo "NOW : $TIMESTAMP_NOW"
      echo "LAST: $TIMESTAMP_LAST"
      echo "DIF : $((${TIMESTAMP_NOW}-${TIMESTAMP_LAST}))"
      TIMESTAMP_LAST=${TIMESTAMP_NOW}
      echo "LAST: $TIMESTAMP_LAST"
    done
done