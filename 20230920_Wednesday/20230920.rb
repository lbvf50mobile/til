# Leetcode: 1658. Minimum Operations to Reduce X to Zero.
# https://leetcode.com/problems/minimum-operations-to-reduce-x-to-zero/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 203 ms, faster than 100.00% of Ruby online submissions for Minimum
# Operations to Reduce X to Zero.
# Memory Usage: 223.3 MB, less than 100.00% of Ruby online submissions for
# Minimum Operations to Reduce X to Zero.
# 2023.09.20 Daily Challenge.
# @param {Integer[]} nums
# @param {Integer} x
# @return {Integer}
def min_operations(nums, x)
  # Based on:
  # https://leetcode.com/problems/minimum-operations-to-reduce-x-to-zero/discuss/2136570/Change-Your-Perspective-or-JAVA-Explanation
  sum = nums.sum
  ml, cs = -1, 0 # ml - max lenght, cs - current sum.
  l = 0
  (0...nums.size).each do |r|
    cs += nums[r]
    while l <= r && (cs > (sum-x))
      cs -= nums[l]
      l += 1
    end
    ml = [ml, r-l+1].max if cs == sum - x
  end
  return -1 == ml ? -1 : nums.size - ml
end
