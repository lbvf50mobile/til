# Leetcode: 215. Kth Largest Element in an Array.
# https://leetcode.com/problems/kth-largest-element-in-an-array/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 214 ms, faster than 60.35% of Ruby online submissions for Kth Largest
# Element in an Array.
# Memory Usage: 221.4 MB, less than 13.79% of Ruby online submissions for Kth
# Largest Element in an Array.
# 2023.08.14 Daily Challenge.
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_kth_largest(nums, k)
  nums.sort_by{|x| -x}[k-1]
end
