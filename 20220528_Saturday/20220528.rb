# Leetcode: 268. Missing Number.
# https://leetcode.com/problems/missing-number/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 95 ms, faster than 84.57% of Ruby online submissions for Missing Number.
# Memory Usage: 212.3 MB, less than 77.78% of Ruby online submissions for Missing Number.
# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  n = nums.size
  s = (n*(1+n)) >> 1
  s - nums.sum
end
