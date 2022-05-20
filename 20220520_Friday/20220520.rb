# Leetcode: 63. Unique Paths II.
# https://leetcode.com/problems/unique-paths-ii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 107 ms, faster than 36.36% of Ruby online submissions for Unique Paths II.
# Memory Usage: 211.1 MB, less than 50.00% of Ruby online submissions for Unique Paths II.
# @param {Integer[][]} obstacle_grid
# @return {Integer}
def unique_paths_with_obstacles(obstacle_grid)
  @o = obstacle_grid
  @dp = Array.new(@o.size).map{ Array.new(@o[0].size,0)}
  # Let's use PUSH DP.
  @dp[0][0] = 1
  return 0 if 1 == @o[0][0]
  (0...@o.size).each do |r|
    (0...@o[0].size).each do |c|
      next if 1 == @o[r][c]
      # Push right.
      a = (c+1).between?(0,@o[0].size-1)
      b = a && 0 == @o[r][c+1]
      if a && b
        @dp[r][c+1] += @dp[r][c]
      end
      # Push down.
      a = (r+1).between?(0,@o.size-1)
      b = a && 0 == @o[r+1][c]
      if a && b
        @dp[r+1][c] += @dp[r][c]
      end
    end
  end
  @dp[@o.size-1][@o[0].size-1]
end
