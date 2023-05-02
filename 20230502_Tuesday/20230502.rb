# Leetcode: 1822. Sign of the Product of an Array.
# https://leetcode.com/problems/sign-of-the-product-of-an-array/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 92 ms, faster than 57.14% of Ruby online submissions for Sign of the
# Product of an Array.
# Memory Usage: 212.3 MB, less than 38.10% of Ruby online submissions for Sign
# of the Product of an Array.
# 2023.05.02 Daily Challenge.
# @param {Integer[]} nums
# @return {Integer}
def array_sign(nums)
  product = nums.reduce(&:*)
  return -1 if 0 > product
  return 0 if 0 == product
  return 1 if 0 < product
end
