# Leetcode: 28. Find the Index of the First Occurrence in a String.
# https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# 2023.03.03 Daily Challenge.
# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  ans = haystack.index(needle)
  return -1 if ! ans
  return ans
end
