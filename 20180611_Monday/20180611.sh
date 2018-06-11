# Bash if/else and one more about test.

# echo "alias x='20180611_Monday/20180611.sh'" 
FILE='20180611_Monday/example'
if [ ! -f $FILE ]; then
        echo "$FILE I going to create it"
        touch $FILE
    else
        echo "$FILE already created"
fi