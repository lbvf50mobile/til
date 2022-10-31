# Leetcode: 766. Toeplitz Matrix.
# https://leetcode.com/problems/toeplitz-matrix/
# @param {Integer[][]} matrix
# @return {Boolean}
def is_toeplitz_matrix(matrix)
  rows, cols = matrix.size, matrix[0].size
  j_start = 0
  (0...rows).each do |i_start|
    previous = nil 
    (i_start...rows).each do |i|
      (j_start...cols).each do |j|
        if previous.nil?
          previous = matrix[i][j] 
          return false if previous != matrix[i][j]
        end
      end
    end
  end
  return true
end

