# Leetcode: 345. Reverse Vowels of a String.
# https://leetcode.com/problems/reverse-vowels-of-a-string/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 322 ms, faster than 24.45% of Ruby online submissions for Reverse Vowels of a String.
# Memory Usage: 214 MB, less than 66.67% of Ruby online submissions for Reverse Vowels of a Strin
# 2022.11.04 Daily Challenge.
# @param {String} s
# @return {String}
def reverse_vowels(s)
  indices, chars = [],[]
  (0...s.size).each do |i| 
    char = s[i]
    if /[aeiou]/i === char
      indices.push(i)
      chars.push(char)
    end
  end
  chars.reverse!
  (0...indices.size).each do |i|
    s[indices[i]] = chars[i]
  end
  s
end
