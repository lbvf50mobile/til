# Leetcode: 378. Kth Smallest Element in a Sorted Matrix.
# https://leetcode.com/problems/kth-smallest-element-in-a-sorted-matrix/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Chirst!
# = = = = = = = = = = = = = =
# Runtime: 158 ms, faster than 73.68% of Ruby online submissions for Kth Smallest Element in a Sorted Matrix.
# Memory Usage: 216.9 MB, less than 10.53% of Ruby online submissions for Kth Smallest Element in a Sorted Matrix.
# @param {Integer[][]} matrix
# @param {Integer} k
# @return {Integer}
def kth_smallest(matrix, k)
  matrix.flatten.sort[k-1]
end
