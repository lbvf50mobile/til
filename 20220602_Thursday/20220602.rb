# Leetcode: 867. Transpose Matrix.
# https://leetcode.com/problems/transpose-matrix/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 152 ms, faster than 37.50% of Ruby online submissions for Transpose Matrix.
# Memory Usage: 211.7 MB, less than 100.00% of Ruby online submissions for Transpose Matrix.
# @param {Integer[][]} matrix
# @return {Integer[][]}
def transpose(matrix)
  ans = Array.new(matrix[0].size).map{ Array.new(matrix.size)}
  (0...matrix.size).each do |row|
    (0...matrix[0].size).each do |col|
      ans[col][row] = matrix[row][col]
    end
  end
  ans
end
