# Leetcode: 45. Jump Game II.
# https://leetcode.com/problems/jump-game-ii/
# @param {Integer[]} nums
# @return {Integer}
def jump(nums)
  return 1 if 1 == nums.size
  dp = [100000] * nums.size
  dp[0] = 0 
  (0...nums.size-1).each do |i|
    (1..nums[i]).each do |j|
      k = i+j
      dp[k] = [dp[k],dp[i]+1].min
    end
  end
  return dp[nums.size-1]
end
