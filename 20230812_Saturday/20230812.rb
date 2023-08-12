# Leetcode: 63. Unique Paths II.
# https://leetcode.com/problems/unique-paths-ii/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 64 ms, faster than 89.47% of Ruby online submissions for Unique Paths
# II.
# Memory Usage: 211.1 MB, less than 52.63% of Ruby online submissions for Unique
# Paths II.
# 2023.08.12 Daily Challenge.
# @param {Integer[][]} obstacle_grid
# @return {Integer}
def unique_paths_with_obstacles(obstacle_grid)
  x = obstacle_grid
  return 0 if 1 == x[0][0]
  m,n = x.size, x[0].size
  dp = Array.new(m){ Array.new(n,0)}
  dp[0][0] = 1
  (1...m).each do |i|
    next if 1 == x[i][0]
    dp[i][0] += dp[i-1][0] 
  end
  (1...n).each do |j|
    next if 1 == x[0][j]
    dp[0][j] +=  dp[0][j-1]
  end
  (1...m).each do |i|
    (1...n).each do |j|
      next if 1 == x[i][j]
      dp[i][j] += dp[i-1][j] + dp[i][j-1]
    end
  end
  return dp[m-1][n-1]
end
