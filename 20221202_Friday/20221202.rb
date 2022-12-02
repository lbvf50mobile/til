# Leetcode: 1657. Determine if Two Strings Are Close.
# https://leetcode.com/problems/determine-if-two-strings-are-close/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1204 ms, faster than 100.00% of Ruby online submissions for Determine if Two Strings Are Close.
# Memory Usage: 224.1 MB, less than 100.00% of Ruby online submissions for Determine if Two Strings Are Close.
# 2022.12.02 Daily Challenge.
# @param {String} word1
# @param {String} word2
# @return {Boolean}
def close_strings(word1, word2)
  # Based on:
  # https://leetcode.com/problems/determine-if-two-strings-are-close/discuss/1029064/Python-Oneliner-with-Counter-explained/827299
  # https://leetcode.com/problems/determine-if-two-strings-are-close/discuss/1029064/Python-Oneliner-with-Counter-explained/826881
  # https://leetcode.com/problems/determine-if-two-strings-are-close/discuss/1029064/Python-Oneliner-with-Counter-explained
  return false if word1.size != word2.size
  a,b = word1.chars.tally, word2.chars.tally
  return false if a.keys.sort != b.keys.sort
  return false if a.values.sort != b.values.sort
  return true
end
