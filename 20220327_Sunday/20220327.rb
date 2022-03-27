# Leetcode: 1337. The K Weakest Rows in a Matrix.
# https://leetcode.com/problems/the-k-weakest-rows-in-a-matrix/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 102 ms, faster than 54.55% of Ruby online submissions for The K Weakest Rows in a Matrix.
# Memory Usage: 212.5 MB, less than 86.36% of Ruby online submissions for The K Weakest Rows in a Matrix.
# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[]}
def k_weakest_rows(mat, k)
  x = mat.map(&:sum).map.with_index{|v,i| [v,i]}
  x = x.sort{|a,b| a.first == b.first ? a.last - b.last : a.first - b.first}
  x[0...k].map(&:last)
end
