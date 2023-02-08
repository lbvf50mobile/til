# Leetcode: 45. Jump Game II.
# https://leetcode.com/problems/jump-game-ii/
# TLE.
# @param {Integer[]} nums
# @return {Integer}
def jump(nums)
  return 0 if 1 == nums.size
  dp = [100000] * nums.size
  dp[0] = 0 
  (0...nums.size-1).each do |i|
    next if 0 == nums[i] # No need to jump from zero.
    (1..[nums[i]+i,nums.size-1].min).reverse_each do |j|
      dp[j] = [dp[j],dp[i]+1].min
    end
  end
  return dp[nums.size-1]
end
