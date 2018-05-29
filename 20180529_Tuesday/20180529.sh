# Bash string Slice.
HW="Hello World!"
echo $HW
echo "0"
echo "${HW:0}" # 0
echo "6"
echo "${HW:6}" # 6
echo "6:5"
echo "${HW:6:5}" # 6:5