# Leetcode: 823. Binary Trees With Factors.
# https://leetcode.com/problems/binary-trees-with-factors
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 323 ms, faster than 100.00% of Ruby online submissions for Binary
# Trees With Factors.
# Memory Usage: 211.7 MB, less than 100.00% of Ruby online submissions for
# Binary Trees With Factors.
# 2023.10.26 Daily Challenge.
# @param {Integer[]} arr
# @return {Integer}
def num_factored_binary_trees(arr)
  # Based on:
  # https://leetcode.com/problems/binary-trees-with-factors/discuss/4209155/Beats-100-oror-Easiest-Approach-in-3-Points-oror-DP-and-HashMap
  arr.sort!
  dp = {}
  arr.size.times do |i|
    dp[arr[i]] = 1
    i.times do |j|
      if 0 == arr[i]%arr[j] && dp[arr[i]/arr[j]]
        dp[arr[i]] += dp[arr[j]] * dp[arr[i]/arr[j]]
      end
    end
  end
  return dp.values.sum % (10**9 + 7)
end
