# Leetcode: 1706. Where Will the Ball Fall.
# https://leetcode.com/problems/where-will-the-ball-fall/
# @param {Integer[][]} grid
# @return {Integer[]}
def find_ball(grid)
  @g = grid
  @r,@c = grid.size, grid[0].size
  @dp = Array.new(@r).map{ Array.new(@c) }
  answer = Array.new(@c,0)
  (0...@c).each do |j|
    answer[j] = rec(0,j)
  end
  return answer
end

def rec(i,j)
  return @dp[i][j] if @dp[i][j]
  return -1 if 0 == j && -1 == @g[i][j]
  return -1 if @c - 1 == j && 1 == @g[i][j] 
  return -1 if 1 == @g[i][j] && -1 == @g[i][j+1]
  return -1 if -1 == @g[i][j] && 1 == @g[i][j-1]
  if @r - 1 == i
    @dp[i][j] = j
    return @dp[i][j]
  end
  if -1 == @g[i][j]
    @dp[i][j] = rec(i+1,j-1)
    return @dp[i][j]
  end
  @dp[i][j] = rec(i+1,j+1)
  return @dp[i][j]
end
