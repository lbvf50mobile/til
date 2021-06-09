# Leetcode: 194. Transpose File.
# https://leetcode.com/problems/transpose-file/
# Read from the file file.txt and print its transposed content to stdout.
input="file.txt"
declare -A matrix
while read -r line
do
	matrix["${#matrix[@]}"]=$line
done < "$input"

rows="${#matrix[@]}"
line=(${matrix[0]})
cols="${#line[@]}"

for ((j=0; j<cols; j++)) do
	tmp=""
	for ((i=0; i<rows; i++)) do
		line=(${matrix[$i]})
		tmp="$tmp ${line[$j]}"
	done
	echo $tmp
done
