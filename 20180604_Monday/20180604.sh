# Bash arrays.
echo "Bash arrays."
# https://www.linuxjournal.com/content/bash-arrays

array=(one two three fore [5]=five)
echo "Array size: ${#array[*]}"

echo "Array items:"
for item in ${array[*]}
do
printf " %s\n" $item
done

echo "Array index:"
for index in ${!array[*]}
do
printf " %s\n" $index
done

echo "Array item and indexes:"
for index in ${!array[*]}
do
 printf "%4d: %s\n" $index ${array[$index]}
done