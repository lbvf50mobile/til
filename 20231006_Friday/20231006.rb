# Leetcode: 343. Integer Break. 
# https://leetcode.com/problems/integer-break/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 68 ms, faster than 50.00% of Ruby online submissions for Integer
# Break.
# Memory Usage: 211 MB, less than 50.00% of Ruby online submissions for Integer
# Break.
# 2023.10.06 Daily Challenge.
# @param {Integer} n
# @return {Integer}
def integer_break(n)
  # Based on:
  # https://leetcode.com/problems/integer-break/solution/
  return n-1 if n <= 3
  dp = Array.new(n+1,0)
  # Set base cases.
  (1..3).each do |i|
    dp[i] = i
  end
  (4..n).each do |num|
    ans = num
    (2...num).each do |i|
      tmp = dp[num-i] * i
      ans = tmp if tmp > ans
    end
    dp[num] = ans
  end
  return dp[n]
end
