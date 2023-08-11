# Leetcode: 518. Coin Change II.
# https://leetcode.com/problems/coin-change-ii/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 273 ms, faster than 45.45% of Ruby online submissions for Coin Change
# II.
# Memory Usage: 230.1 MB, less than 36.36% of Ruby online submissions for Coin
# Change II.
# 2023.08.11 Daily Challange.
# @param {Integer} amount
# @param {Integer[]} coins
# @return {Integer}
def change(amount, coins)
  # Based on:
  # https://leetcode.com/problems/coin-change-ii/solution/
  n = coins.size
  dp = Array.new(n+1){ Array.new(amount+1,0)}
  (0...n).each do |i|
    dp[i][0] = 1
  end
  (0...n).reverse_each do |i|
    (1..amount).each do |j|
      if coins[i] > j
        dp[i][j] = dp[i+1][j]
      else
        dp[i][j] = dp[i+1][j] + dp[i][j-coins[i]]
      end
    end
  end
  return dp[0][amount]
end
