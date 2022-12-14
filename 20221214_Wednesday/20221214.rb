# Leetcode: 198. House Robber.
# https://leetcode.com/problems/house-robber/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 67 ms, faster than 100.00% of Ruby online submissions for House Robber.
# Memory Usage: 211.2 MB, less than 13.19% of Ruby online submissions for House Robber.
# 2022.12.14 Daily Challenge.
# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  return nums[0] if 1 == nums.size
  @n = nums
  @dp = {}
  return [dfs(0),dfs(1)].max
end

def dfs(i)
  # If current house is robbed. Cannot rob next one.
  # Need to select between 1 after next or 2 after next.
  return @dp[i] if @dp[i]
  return 0 if i >= @n.size
  @dp[i] =  @n[i] + [dfs(i+2),dfs(i+3)].max
  return @dp[i]
end


