# Leetcode: 389. Find the Difference.
# https://leetcode.com/problems/find-the-difference/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 156 ms, faster than 7.69% of Ruby online submissions for Find the Difference.
# Memory Usage: 211.1 MB, less than 11.54% of Ruby online submissions for Find the Difference.
# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
  s = s.chars.sort
  s.push(?.)
  t = t.chars.sort
  t.zip(s).select{|(first,last)| first != last}.first.first
end
