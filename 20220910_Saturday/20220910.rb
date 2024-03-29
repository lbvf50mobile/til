# Leetcode: 188. Best Time to Buy and Sell Stock IV.
# https://leetcode.com/problems/best-time-to-buy-and-sell-stock-iv/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 249 ms, faster than 100.00% of Ruby online submissions for Best Time to Buy and Sell Stock IV.
# Memory Usage: 212 MB, less than 100.00% of Ruby online submissions for Best Time to Buy and Sell Stock IV.
# @param {Integer} k
# @param {Integer[]} prices
# @return {Integer}
def max_profit(k, prices)
  # Based on the Mistersky soltuion.
  # https://leetcode.com/problems/best-time-to-buy-and-sell-stock-iv/discuss/900791/Ruby-DP
  n = prices.size
  return 0 if n < 2 # No place to sell.
  if k >= (n/2)
    max_profit = 0
    (0...(n-1)).each do |i|
      # Check does it bring money if buy today and sell tommorow.
      max_profit += (prices[i+1] - prices[i]) if 0 < prices[i+1] - prices[i]
    end
    return max_profit
  end
  dp = Array.new(n).map{ Array.new(k+1,0)}
  (1..k).each do |j|
    local_max = -prices[0]
    (1...n).each do |i| # here start from 1.
      dp[i][j] = [dp[i-1][j],prices[i] + local_max].max
      local_max = [local_max, dp[i-1][j-1] - prices[i]].max
    end
  end
  return dp[n-1][k]
end
