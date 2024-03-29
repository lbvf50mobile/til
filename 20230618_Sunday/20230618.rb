# Leetcode: 2328. Number of Increasing Paths in a Grid.
# https://leetcode.com/problems/number-of-increasing-paths-in-a-grid/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1315 ms, faster than 100.00% of Ruby online submissions for Number of
# Increasing Paths in a Grid.
# Memory Usage: 233.5 MB, less than 100.00% of Ruby online submissions for
# Number of Increasing Paths in a Grid.
# 2023.06.18 Daily Challenge.
# @param {Integer[][]} grid
# @return {Integer}
def count_paths(grid)
  # Based on the Leetcode's solution.
  # https://leetcode.com/problems/number-of-increasing-paths-in-a-grid/solution/
  @g = grid
  @m, @n = @g.size, @g[0].size
  @md = (10**9) + 7
  @dr = [[0,1],[0,-1],[1,0],[-1,0]]
  @dp = Array.new(@m){ Array.new(@n,0)}

  ans = 0
  (0...@m).each do |i|
    (0...@n).each do |j|
      ans = (ans + dfs(i,j)) % @md
    end
  end
  return ans
end

def dfs(i,j)
  return @dp[i][j] if 0 != @dp[i][j]
  ans = 1
  @dr.each do |di,dj|
    pi,pj = i+di, j+dj
    good = pi.between?(0,@m-1) && pj.between?(0,@n-1) 
    if good && @g[pi][pj] < @g[i][j]
      ans += dfs(pi,pj) % @md
    end
  end
  @dp[i][j] = ans
  return ans
end
