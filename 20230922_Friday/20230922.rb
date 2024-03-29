# Leetcode: 392. Is Subsequence.
# https://leetcode.com/problems/is-subsequence
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 58 ms, faster than 89.08% of Ruby online submissions for Is
# Subsequence.
# Memory Usage: 211.1 MB, less than 34.50% of Ruby online submissions for Is
# Subsequence.
# 2023.09.22 Daily challenge.
# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
  # S is Subsequence of T. S is less then T.
  return false if s.size > t.size
  i,j = 0, 0
  # Ok. Considiration time.
  # Need to reach the end of s skipping t elements.
  while i < s.size && j < t.size
    a,b = s[i], t[j]
    if a == b
      i += 1
      j += 1
    else
      j += 1
    end
  end
  return s.size == i 
end
