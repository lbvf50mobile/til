# Leetcode: 766. Toeplitz Matrix.
# https://leetcode.com/problems/toeplitz-matrix/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 88 ms, faster than 81.82% of Ruby online submissions for Toeplitz Matrix.
# Memory Usage: 211.5 MB, less than 18.18% of Ruby online submissions for Toeplitz Matrix.
# 2022.10.31 Daily Challenge.
# @param {Integer[][]} matrix
# @return {Boolean}
def is_toeplitz_matrix(matrix)
  rows, cols = matrix.size, matrix[0].size
  j_start = 0
  (0...rows).each do |i_start|
    previous = nil 
    i, j = i_start, j_start
    while i.between?(0,rows-1) && j.between?(0,cols-1)
      previous = matrix[i][j] if previous.nil?
      return false if previous != matrix[i][j]
      previous = matrix[i][j]
      i+=1
      j+=1
    end
  end
  i_start = 0
  (0...cols).each do |j_start|
    previous = nil
    i, j = i_start, j_start
    while i.between?(0,rows-1) && j.between?(0,cols-1)
      previous = matrix[i][j] if previous.nil?
      return false if previous != matrix[i][j]
      previous = matrix[i][j]
      i+=1
      j+=1
    end
  end
  return true
end

