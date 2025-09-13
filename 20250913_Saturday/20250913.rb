# Leetcode: 3541. Find Most Frequent Vowel and Consonant
# https://leetcode.com/problems/find-most-frequent-vowel-and-consonant/description/?envType=daily-question&envId=2025-09-13
# - - -
# Accepted.
# Thanks God, Jesus Christ!

# @param {String} s
# @return {Integer}
def max_freq_sum(s)
  arr = s.split('').tally.to_a
  vowel = arr.select{|x| /[aeiou]/ === x[0]}.map(&:last).max || 0
  consonant = arr.select{|x| /[^aeiou]/ === x[0]}.map(&:last).max || 0
  return vowel+consonant
end
