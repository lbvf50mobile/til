# Leetcode: 26. Remove Duplicates from Sorted Array.
# https://leetcode.com/problems/remove-duplicates-from-sorted-array/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 170 ms, faster than 64.22% of Ruby online submissions for Remove Duplicates from Sorted Array.
# Memory Usage: 211.9 MB, less than 42.82% of Ruby online submissions for Remove Duplicates from Sorted Array.
# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  nums.uniq!
  nums.size
end
