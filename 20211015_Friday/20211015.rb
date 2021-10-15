# Leetcode: 309. Best Time to Buy and Sell Stock with Cooldown.
# https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-cooldown/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 91 ms, faster than 25.00% of Ruby online submissions for Best Time to Buy and Sell Stock with Cooldown.
# Solution based on:
# https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-cooldown/discuss/75927/Share-my-thinking-process
# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  # https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-cooldown/discuss/75927/Share-my-thinking-process
  return 0  if prices.size < 2
  sell, buy, prev_sell, prev_buy = 0, -prices[0],0,0
  prices.each do |price|
    prev_buy = buy
    buy = [prev_sell - price, prev_buy].max
    prev_sell = sell
    sell = [prev_buy + price, prev_sell].max
  end
  sell
end
