# Leetcode: 867. Transpose Matrix.
# https://leetcode.com/problems/transpose-matrix/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 142 ms, faster than 37.50% of Ruby online submissions for Transpose Matrix.
# Memory Usage: 211.8 MB, less than 87.50% of Ruby online submissions for Transpose Matrix.
# @param {Integer[][]} matrix
# @return {Integer[][]}
def transpose(matrix)
  matrix[0].map.with_index{|_,i| matrix.map{|x| x[i]}} 
end
