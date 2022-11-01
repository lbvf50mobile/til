# Leetcode: 1706. Where Will the Ball Fall.
# https://leetcode.com/problems/where-will-the-ball-fall/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 202 ms, faster than 65.85% of Ruby online submissions for Where Will the Ball Fall.
# Memory Usage: 214.2 MB, less than 14.63% of Ruby online submissions for Where Will the Ball Fall.
# 2022.11.01 Daily Challenge.
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
  # Cannot step back.
  return -1 if 0 == j && -1 == @g[i][j] 
  # Cannot step forward.
  return -1 if @c - 1 == j && 1 == @g[i][j] 
  # Cannot step forard.
  return -1 if 1 == @g[i][j] && -1 == @g[i][j+1]
  # Cannot step back.
  return -1 if -1 == @g[i][j] && 1 == @g[i][j-1]
  if @r - 1 == i
    @dp[i][j] = 1 == @g[i][j] ? j + 1 : j - 1
    return @dp[i][j]
  end
  if -1 == @g[i][j]
    @dp[i][j] = rec(i+1,j-1)
    return @dp[i][j]
  end
  @dp[i][j] = rec(i+1,j+1)
  return @dp[i][j]
end
