# Leetcode: 2215. Find the Difference of Two Arrays.
# https://leetcode.com/problems/find-the-difference-of-two-arrays/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 145 ms, faster than 30.00% of Ruby online submissions for Find the
# Difference of Two Arrays.
# Memory Usage: 212 MB, less than 70.00% of Ruby online submissions for Find the
# Difference of Two Arrays.
# 2023.05.03 Daily Challenge.
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[][]}
def find_difference(nums1, nums2)
  a,b = nums1.uniq, nums2.uniq
  [a-b,b-a]
end
