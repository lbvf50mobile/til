# Leetcode: 1269. Number of Ways to Stay in the Same Place After Some Steps.
# https://leetcode.com/problems/number-of-ways-to-stay-in-the-same-place-after-some-steps/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 259 ms, faster than 100.00% of Ruby online submissions for Number of
# Ways to Stay in the Same Place After Some Steps.
# Memory Usage: 237.7 MB, less than 100.00% of Ruby online submissions for
# Number of Ways to Stay in the Same Place After Some Steps.
# 2023.10.15 Daily Challenge.
# @param {Integer} steps
# @param {Integer} arr_len
# @return {Integer}
def num_ways(steps, arr_len)
  # Based on:
  # https://leetcode.com/problems/number-of-ways-to-stay-in-the-same-place-after-some-steps/solution/
  mod = 10**9 + 7
  len = [steps, arr_len].min
  dp = Array.new(len){ Array.new(steps+1,0)}
  dp[0][0] = 1
  (1..steps).each do |r|
    (0...len).reverse_each do |c|
      ans = dp[c][r-1]
      if c > 0
        ans = (ans + dp[c-1][r-1]) % mod
      end
      if c < len - 1
        ans = (ans + dp[c+1][r-1]) % mod
      end
      dp[c][r] = ans
    end
  end
  dp[0][0] = 1
  return dp[0][steps]
end
