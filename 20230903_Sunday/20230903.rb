# Leetcode: 62. Unique Paths.
# https://leetcode.com/problems/unique-paths/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 66 ms, faster than 61.90% of Ruby online submissions for Unique
# Paths.
# Memory Usage: 211 MB, less than 85.71% of Ruby online submissions for Unique
# Paths.
# 2023.09.03 Daily Challenge.
# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
  # 1. Create a field for DP.
  dp = Array.new(m){ Array.new(n,0)}
  # One way to visit first row.
  n.times do |j|
    dp[0][j] = 1
  end
  # One way to visit first column.
  m.times do |i|
    dp[i][0] = 1
  end
  # Using pull dp.
  (1...m).each do |i|
    (1...n).each do |j|
      dp[i][j] = dp[i-1][j] + dp[i][j-1]
    end
  end
  dp[-1][-1]
end
