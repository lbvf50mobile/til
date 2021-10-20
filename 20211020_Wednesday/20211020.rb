# Leetcode: 151. Reverse Words in a String.
# https://leetcode.com/problems/reverse-words-in-a-string/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 135 ms, faster than 5.26% of Ruby online submissions for Reverse Words in a String.
# Memory Usage: 210.5 MB, less than 35.53% of Ruby online submissions for Reverse Words in a String.
# @param {String} s
# @return {String}
def reverse_words(s)
  s.split(" ").reverse.join(" ")
end
