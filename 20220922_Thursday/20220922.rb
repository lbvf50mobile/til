# Leetcode: 557. Reverse Words in a String III.
# https://leetcode.com/problems/reverse-words-in-a-string-iii/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 75 ms, faster than 100.00% of Ruby online submissions for Reverse Words in a String III.
# Memory Usage: 213 MB, less than 22.73% of Ruby online submissions for Reverse Words in a String III.
# @param {String} s
# @return {String}
def reverse_words(s)
  s.split(" ").map(&:reverse).join(" ")
end
