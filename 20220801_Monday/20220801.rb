# Leetcode: 62. Unique Paths.
# https://leetcode.com/problems/unique-paths/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 86 ms, faster than 92.38% of Ruby online submissions for Unique Paths.
# Memory Usage: 211.2 MB, less than 13.33% of Ruby online submissions for Unique Paths.
# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
  # Create a matrix.
  matrix = Array.new(m).map{ Array.new(n,0)}
  # Fill first row: i = 0; j = (0...n);
  (0...n).each do |j|
    matrix[0][j] = 1
  end
  # Fill first column: i = (0...m); j = 0;
  (0...m).each do |i|
    matrix[i][0] = 1
  end
  # Iterate over the rest of the matrix.
  # i = (1...m); j = (1...n);
  # Pull DP. From a row above: i-1;
  # Pull DP. From a left column: j-1;
  (1...m).each do |i|  
    (1...n).each do |j| # Here was an error.
      matrix[i][j] += matrix[i-1][j]
      matrix[i][j] += matrix[i][j-1]
    end
  end
  # Return the bottom right cell.
  matrix[m-1][n-1]
end
