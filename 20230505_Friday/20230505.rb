# Leetcode: 1456. Maximum Number of Vowels in a Substring of Given Length.
# https://leetcode.com/problems/maximum-number-of-vowels-in-a-substring-of-given-length/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 765 ms, faster than 45.45% of Ruby online submissions for Maximum
# Number of Vowels in a Substring of Given Length.
# Memory Usage: 213.8 MB, less than 36.36% of Ruby online submissions for
# Maximum Number of Vowels in a Substring of Given Length.
# 2023.05.05 Daily Challenge.
# @param {String} s
# @param {Integer} k
# @return {Integer}
def max_vowels(s, k)
  #Vowel letters in English are 'a', 'e', 'i', 'o', and 'u'.
  r = /[aeiou]/
  max = 0
  (0...k).each do |i|
    max += 1 if r === s[i]
  end
  return max if k == max
  cur = max
  (k...s.size).each do |j|
    i = j - k
    cur -= 1 if r === s[i]
    cur += 1 if r === s[j]
    max = cur if cur > max
    return max if max == k
  end
  return max
end
