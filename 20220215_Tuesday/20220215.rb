# Leetcode: 136. Single Number.
# https://leetcode.com/problems/single-number/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 133 ms, faster than 42.53% of Ruby online submissions for Single Number.
# Memory Usage: 212.4 MB, less than 55.56% of Ruby online submissions for Single Number.
# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  nums.reduce(&:^)
end
