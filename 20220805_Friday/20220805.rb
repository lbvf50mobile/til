# Leetcode: 377. Combination Sum IV.
# https://leetcode.com/problems/combination-sum-iv/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def combination_sum4(nums, target)
  dp = Array.new(target+1,0)
  dp[0] = 1 # Only one way to create sum 0.
  nums = nums.sort
  # Iterate ovel all positions.
  (0...dp.size).each do |i|
    curr = dp[i] # Number of ways to reach current position.
    next if 0 == curr # no need to iterate from unreachable position.
    nums.each do |coin| # Iterate over all possible coins.
      addr = i + coin
      break if addr > target 
      dp[addr] += curr
    end
  end
  dp[target]
end
