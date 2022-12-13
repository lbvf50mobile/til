# Leetcode: 931. Minimum Falling Path Sum.
# https://leetcode.com/problems/minimum-falling-path-sum/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 164 ms, faster than 28.57% of Ruby online submissions for Minimum Falling Path Sum.
# Memory Usage: 211.9 MB, less than 71.43% of Ruby online submissions for Minimum Falling Path Sum.
# 2022.12.13 Daily Challenge.
# @param {Integer[][]} matrix
# @return {Integer}
def min_falling_path_sum(matrix)
  @m,@n = matrix, matrix.size
  # Start from second row (index one).
  (1...@n).each do |i|
    (0...@n).each do |j|
      min = get_val(i-1,j-1) 
      tmp = get_val(i-1,j)
      min = tmp if min > tmp 
      tmp = get_val(i-1,j+1)
      min = tmp if min > tmp
      @m[i][j] += min
    end
  end
  @m.last.min
end
def get_val(i,j)
  return Float::INFINITY if !i.between?(0,@n-1)
  return Float::INFINITY if !j.between?(0,@n-1)
  return @m[i][j]
end
