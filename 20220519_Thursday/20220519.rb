# Leetcode: 329. Longest Increasing Path in a Matrix.
# https://leetcode.com/problems/longest-increasing-path-in-a-matrix/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 393 ms, faster than 27.27% of Ruby online submissions for Longest Increasing Path in a Matrix.
# Memory Usage: 212.7 MB, less than 81.82% of Ruby online submissions for Longest Increasing Path in a Matrix.
# @param {Integer[][]} matrix
# @return {Integer}
def longest_increasing_path(matrix)
  @mx = matrix
  @dp = Array.new(matrix.size).map{ Array.new(@mx[0].size,nil)}
  max = 0
  (0...@mx.size).each do |r|
    (0...@mx[0].size).each do |c|
      tmp = dfs(r,c)
      max = tmp if tmp > max
    end
  end
  max
end

def dfs(r,c)
  return @dp[r][c] if @dp[r][c]
  max = 0
  [[1,0],[0,1],[-1,0],[0,-1]].each do |(dr,dc)|
    nr,nc = r+dr, c+dc
    next if ! nr.between?(0, @mx.size-1)
    next if ! nc.between?(0, @mx[0].size - 1)
    next if @mx[r][c] >= @mx[nr][nc]
    tmp = dfs(nr,nc)
    max = tmp if tmp > max
  end
  ans = max + 1
  @dp[r][c] = ans
  return ans
end
