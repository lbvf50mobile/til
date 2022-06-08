# Leetcode: 1332. Remove Palindromic Subsequences.
# https://leetcode.com/problems/remove-palindromic-subsequences/
# @param {String} s
# @return {Integer}
# Incorrect.
# "bbaabaaa"
def remove_palindrome_sub(s)
  @s = s
  @n = s.size
  @i = 0
  counter = 0
  while @i < @n
    cut_palindrome()
    counter += 1
  end
  counter
end

def cut_palindrome()
  last = @i
  (@i...@n).each do |j|
    str = @s[@i..j]
    last = j if str == str.reverse 
  end
  @i = last + 1
end
