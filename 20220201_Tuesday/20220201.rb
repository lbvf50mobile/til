# Leetcode: 121. Best Time to Buy and Sell Stock.
# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 276 ms, faster than 27.38% of Ruby online submissions for Best Time to Buy and Sell Stock.
# Memory Usage: 220.8 MB, less than 17.62% of Ruby online submissions for Best Time to Buy and Sell Stock.
# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  max = 0
  stack = []
  prices.each do |price|
    while (! stack.empty?) && stack.last >= price
      stack.pop
    end
    stack.push(price)
    max = stack.last - stack.first if (stack.last - stack.first) > max
  end
  max
end
