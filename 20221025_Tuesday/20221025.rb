# Leetcode: 1662. Check If Two String Arrays are Equivalent.
# https://leetcode.com/problems/check-if-two-string-arrays-are-equivalent/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 171 ms, faster than 7.69% of Ruby online submissions for Check If Two String Arrays are Equivalent.
# Memory Usage: 211 MB, less than 69.23% of Ruby online submissions for Check If Two String Arrays are Equivalent.
# 2022.10.25 Daily Challenge.
# @param {String[]} word1
# @param {String[]} word2
# @return {Boolean}
def array_strings_are_equal(word1, word2)
  word1.join == word2.join
end
