# Leetcode: 74. Search a 2D Matrix.
# https://leetcode.com/problems/search-a-2d-matrix/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 116 ms, faster than 50.46% of Ruby online submissions for Search a 2D Matrix.
# Memory Usage: 211.4 MB, less than 11.93% of Ruby online submissions for Search a 2D Matrix.
# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  matrix.flatten.index(target) ? true : false
end
