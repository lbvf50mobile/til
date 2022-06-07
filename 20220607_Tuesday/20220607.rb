# Leetcode: 88. Merge Sorted Array.
# https://leetcode.com/problems/merge-sorted-array/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 187 ms, faster than 5.06% of Ruby online submissions for Merge Sorted Array.
# Memory Usage: 211.3 MB, less than 5.62% of Ruby online submissions for Merge Sorted Array.
# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  tmp = []
  i,j = 0,0
  while i < m && j < n
    if nums1[i] < nums2[j]
      tmp.push(nums1[i])
      i += 1
    else
      tmp.push(nums2[j])
      j += 1
    end
  end
  while i < m; tmp.push(nums1[i]); i += 1; end
  while j < n; tmp.push(nums2[j]); j += 1; end
  (0...n+m).each{|i| nums1[i] = tmp[i]}
end
