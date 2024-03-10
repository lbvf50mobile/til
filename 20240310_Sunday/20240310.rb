# Leetcode: 349. Intersection of Two Arrays.
# https://leetcode.com/problems/intersection-of-two-arrays/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 58 ms, faster than 76.47% of Ruby online submissions for
# Intersection of Two Arrays.
# Memory Usage: 211.9 MB, less than 6.86% of Ruby online submissions for
# Intersection of Two Array
# 2024.03.10 Daily Challenge.

require "set"
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersection(nums1, nums2)
  (Set.new(nums1) & Set.new(nums2)).to_a
end
