# Leetcode: 714. Best Time to Buy and Sell Stock with Transaction Fee.
# https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-transaction-fee/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 226 ms, faster than 46.15% of Ruby online submissions for Best Time
# to Buy and Sell Stock with Transaction Fee.
# Memory Usage: 225.7 MB, less than 30.77% of Ruby online submissions for Best
# Time to Buy and Sell Stock with Transaction Fee.
# 2023.06.22 Daily Challenge.
# @param {Integer[]} prices
# @param {Integer} fee
# @return {Integer}
def max_profit(prices, fee)
  # Based on:
  # https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-transaction-fee/solution/
  n = prices.size
  hold = Array.new(n,0)
  free = Array.new(n,0)
  hold[0] = - prices[0]
  (1...n).each do |i|
    hold[i] = [hold[i-1],free[i-1] - prices[i]].max
    free[i] = [free[i-1],hold[i-1] + prices[i] - fee].max
  end
  return free[-1]
end
