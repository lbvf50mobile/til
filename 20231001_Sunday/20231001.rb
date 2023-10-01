# Leetcode: 557. Reverse Words in a String III.
# https://leetcode.com/problems/reverse-words-in-a-string-iii/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 67 ms, faster than 73.68% of Ruby online submissions for Reverse
# Words in a String III.
# Memory Usage: 212.8 MB, less than 52.63% of Ruby online submissions for
# Reverse Words in a String III.
# 2023.10.01 Daily Challenge.
# @param {String} s
# @return {String}
def reverse_words(s)
  s.split(" ").map(&:reverse).join(" ")
end
