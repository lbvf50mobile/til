# Leetcode: 73. Set Matrix Zeroes.
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/614/week-2-august-8th-august-14th/3888/
# https://leetcode.com/problems/set-matrix-zeroes/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def set_zeroes(matrix)
  rows = Array.new(matrix.size,false)
  columns = Array.new(matrix[0].size,false)

  # Find where zeros are.
  (0...matrix.size).each do |i|
    (0...matrix[0].size).each do |j|
      if matrix[i][j].zero?
        rows[i] = true
        columns[j] = true
      end
    end
  end

  # Set values to the matrix.
  (0...matrix.size).each do |i|
    (0...matrix[0].size).each do |j|
      matrix[i][j] = 0 if rows[i] || columns[j]
    end
  end
end
