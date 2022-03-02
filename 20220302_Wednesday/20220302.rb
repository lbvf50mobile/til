# Leetcode: 392. Is Subsequence.
# https://leetcode.com/problems/is-subsequence/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 98 ms, faster than 75.00% of Ruby online submissions for Is Subsequence.
# Memory Usage: 212 MB, less than 5.88% of Ruby online submissions for Is Subsequence.
# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
  return true if s.size == 0
  return false if s.size > t.size
  sp = 0 # s pointer.
  t.chars.each do |char|
    if s[sp] == char
      sp += 1
      return true if sp == s.size
    end
  end
  return false
end
