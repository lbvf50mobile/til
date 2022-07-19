# Leetcode: 1074. Number of Submatrices That Sum to Target.
# https://leetcode.com/problems/number-of-submatrices-that-sum-to-target/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 630 ms, faster than 100.00% of Ruby online submissions for Number of Submatrices That Sum to Target.
# Memory Usage: 227.5 MB, less than 100.00% of Ruby online submissions for Number of Submatrices That Sum to Target.
# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Integer}
def num_submatrix_sum_target(matrix, target)
  # Based on: https://leetcode.com/problems/number-of-submatrices-that-sum-to-target/discuss/1162790/Ruby-DP
  m, n = matrix.size, matrix[0].size
  # Prefix array.
  (0...m).each do |i|
    (1...n).each do |j|
      matrix[i][j] += matrix[i][j-1]
    end
  end
  result = 0
  (0...n).each do |j1|
    (j1...n).each do |j2|
      h = {}; h[0] = 1
      s = 0
      (0...m).each do |i|
        s += matrix[i][j2] - (j1 > 0 ? matrix[i][j1-1] : 0)
        result += h[s-target] || 0
        h[s] = (h[s] || 0) + 1
      end
    end
  end
  result
end
