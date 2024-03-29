# Leetcode: 1877. Minimize Maximum Pair Sum in Array.
# https://leetcode.com/problems/minimize-maximum-pair-sum-in-array
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 241 ms, faster than 64.71% of Ruby online submissions for Minimize
# Maximum Pair Sum in Array.
# Memory Usage: 225.5 MB, less than 64.71% of Ruby online submissions for
# Minimize Maximum Pair Sum in Array.
# 2023.11.17 Daily Challenge.
# @param {Integer[]} nums
# @return {Integer}
def min_pair_sum(nums)
  # Maxiest with smallest => minimized maximum.
  nums.sort!
  i,j = 0, nums.size - 1
  max = nums[i] + nums[j]
  i += 1
  j -= 1
  while i < j
    tmp = nums[i] + nums[j]
    max = tmp if tmp > max
    i += 1
    j -= 1
  end
  return max
end
