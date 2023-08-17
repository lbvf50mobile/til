# Leetcode: 542. 01 Matrix.
# https://leetcode.com/problems/01-matrix/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 258 ms, faster than 100.00% of Ruby online submissions for 01 Matrix.
# Memory Usage: 214 MB, less than 83.33% of Ruby online submissions for 01
# Matrix.
# 2023.08.17 Daily Challenge.
# @param {Integer[][]} mat
# @return {Integer[][]}
def update_matrix(mat)
  rows = mat.size
  cols = mat[0].size
  rows.times do |i|
    cols.times do |j|
      if 0 != mat[i][j]
        top = i > 0 ? mat[i-1][j] : Float::INFINITY
        left = j > 0 ? mat[i][j-1] : Float::INFINITY
        mat[i][j] = [left,top].min + 1
      end
    end
  end
  (0...rows).reverse_each do |i|
    (0...cols).reverse_each do |j|
      right = j < cols - 1 ? mat[i][j+1] : Float::INFINITY
      down = i < rows - 1 ? mat[i+1][j] : Float::INFINITY
      mat[i][j] = [mat[i][j], [right, down].min + 1].min
    end
  end
  return mat
end
