# Leetcode: 1425. Constrained Subsequence Sum.
# https://leetcode.com/problems/constrained-subsequence-sum/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 354 ms, faster than 100.00% of Ruby online submissions for
# Constrained Subsequence Sum.
# Memory Usage: 237.3 MB, less than 100.00% of Ruby online submissions for
# Constrained Subsequence Sum.
# 2023.10.21 Daily Challenge.
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def constrained_subset_sum(nums, k)
  # Based on:
  # https://leetcode.com/problems/constrained-subsequence-sum/solution/
  q = []  
  dp = Array.new(nums.size,0)
  nums.size.times do |i|
    q.shift if (!q.empty?) && ((i - q[0]) > k)
    tmp = q.empty? ? 0 : dp[q[0]]
    dp[i] = tmp + nums[i]
    while (!q.empty?) && dp[q[-1]] < dp[i]
      q.pop
    end
    q.push(i) if dp[i] > 0
  end
  dp.max
end
