# Leetcode: 1759. Count Number of Homogenous Substrings.
# https://leetcode.com/problems/count-number-of-homogenous-substrings/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 266 ms, faster than 100.00% of Ruby online submissions for Count
# Number of Homogenous Substrings.
# Memory Usage: 215.3 MB, less than 100.00% of Ruby online submissions for Count
# Number of Homogenous Substrings.
# 2023.11.09 Daily Challenge.
# @param {String} s
# @return {Integer}
def count_homogenous(s)
  # Based on:
  # https://leetcode.com/problems/count-number-of-homogenous-substrings/solution/
  ans = 0
  streak = 0
  mod = (10**9) + 7
  s.size.times do |i|
    if 0 == i || s[i] == s[i-1]
      streak += 1
    else
      streak = 1
    end
    ans = (ans + streak) % mod
  end
  return ans
end
