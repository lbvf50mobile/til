# Leetcode: 81. Search in Rotated Sorted Array II.
# https://leetcode.com/problems/search-in-rotated-sorted-array-ii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 76 ms, faster than 87.50% of Ruby online submissions for Search in Rotated Sorted Array II.
# Memory Usage: 211.3 MB, less than 62.50% of Ruby online submissions for Search in Rotated Sorted Array II.
# @param {Integer[]} nums
# @param {Integer} target
# @return {Boolean}
def search(nums, target)
  nums.index(target) ? true : false
end
