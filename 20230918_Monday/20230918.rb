# Leetcode: 1337. The K Weakest Rows in a Matrix.
# https://leetcode.com/problems/the-k-weakest-rows-in-a-matrix/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 63 ms, faster than 100.00% of Ruby online submissions for The K
# Weakest Rows in a Matrix.
# Memory Usage: 212.4 MB, less than 100.00% of Ruby online submissions for The K
# Weakest Rows in a Matrix.
# 2023.09.18 Daily Challenge.
# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[]}
def k_weakest_rows(mat, k)
  mat.map(&:sum).each_with_index
    .sort{|a,b| a[0] == b[0] ? a[1] <=> b[1] : a[0] <=> b[0]}
    .map(&:last)[0...k]
end
