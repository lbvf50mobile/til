# Leetcode: 2742. Painting the Walls. 
# https://leetcode.com/problems/painting-the-walls/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 739 ms, faster than 100.00% of Ruby online submissions for Painting
# the Walls.
# Memory Usage: 220 MB, less than 100.00% of Ruby online submissions for
# Painting the Walls.
# 2023.10.14 Daily Challenge.
# @param {Integer[]} cost
# @param {Integer[]} time
# @return {Integer}
def paint_walls(cost, time)
  # Based on:
  # https://leetcode.com/problems/painting-the-walls/solution/
  n = cost.size
  dp = Array.new(n+1){ Array.new(n+1,0)}
  (1..n).each do |i| 
    dp[n][i] = Float::INFINITY
  end
  (0...n).reverse_each do |i|
    (1..n).each do |r|
      tmp = [0, r - 1 - time[i]].max
      paint = cost[i] + dp[i+1][tmp]
      dont_paint = dp[i+1][r]
      dp[i][r] = [paint,dont_paint].min
    end
  end
  return dp[0][n]
end
