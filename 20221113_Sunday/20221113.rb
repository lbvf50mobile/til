# Leetcode: 151. Reverse Words in a String.
# https://leetcode.com/problems/reverse-words-in-a-string/
# = = = = = = = = = = = = = = 
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 165 ms, faster than 41.67% of Ruby online submissions for Reverse Words in a String.
# Memory Usage: 211.4 MB, less than 54.17% of Ruby online submissions for Reverse Words in a String.
# 2022.11.13 Daily Challenge.
# @param {String} s
# @return {String}
def reverse_words(s)
  s.split(" ").reverse.join(" ")
end
