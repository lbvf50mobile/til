# Leetcode: 790. Domino and Tromino Tiling.
# https://leetcode.com/problems/domino-and-tromino-tiling/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 104 ms, faster than 100.00% of Ruby online submissions for Domino and Tromino Tiling.
# Memory Usage: 211.4 MB, less than 100.00% of Ruby online submissions for Domino and Tromino Tiling.
# 2022.12.24 Daily Challenge.
# @param {Integer} n
# @return {Integer}
def num_tilings(n)
  # Add one column in front to start indices from one.
  # Add one column at the end to aviod check in code.
  dp = Array.new(n+2).map{ Array.new(4,0)}
  x = (10**9) + 7
  dp[1][0] = 1 # There is only one way to get empty column.
  (1..n).each do |i|
    j = i + 1
    # Order is importatnt!
    # Start from state #3 "Both".
    cur = dp[i][3]
    dp[j][0] += cur
    # Continue with state #0 "Empty".
    # It is only where value for i filled as well.
    cur = dp[i][0]
    dp[j][3] += cur
    dp[j][1] += cur
    dp[j][2] += cur
    dp[j][0] += cur
    dp[i][3] += cur # Only case that one "Both" is first.
    # Continue with state #1 "Top".
    cur = dp[i][1]
    dp[j][2] += cur 
    dp[j][3] += cur
    # Continue with state #2 "Bottom".
    cur = dp[i][2]
    dp[j][1] += cur
    dp[j][3] += cur
    
    dp[i][0] %= x
    dp[i][1] %= x
    dp[i][2] %= x
    dp[i][3] %= x
    dp[j][0] %= x
    dp[j][1] %= x
    dp[j][2] %= x
    dp[j][3] %= x
  end
  return dp[n][3]
end
