# Leetcode: 2785. Sort Vowels in a String.
# https://leetcode.com/problems/sort-vowels-in-a-string/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 427 ms, faster than 33.33% of Ruby online submissions for Sort
# Vowels in a String.
# Memory Usage: 240.4 MB, less than 33.33% of Ruby online submissions for Sort
# Vowels in a String.
# @param {String} s
# @return {String}
def sort_vowels(s)
  initial_array = s.chars
  indices = []
  values = []
  initial_array.each_with_index do |char, i|
    if /[aeiouAEIOU]/ === char
      indices.push(i)
      values.push(char)
    end
  end
  values.sort!
  indices.size.times do |i|
    arr_i = indices[i]
    val = values[i]
    initial_array[arr_i] = val
  end
  return initial_array.join
end
