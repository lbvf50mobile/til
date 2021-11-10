# Leetcode: 122. Best Time to Buy and Sell Stock II.
# https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 48 ms, faster than 97.60% of Ruby online submissions for Best Time to Buy and Sell Stock II.
# Memory Usage: 210.4 MB, less than 33.60% of Ruby online submissions for Best Time to Buy and Sell Stock II.
# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  # Based on:
  # https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/solution/
  i =  0
  valley, peak, maxprofit = prices[0], prices[0], 0
  while i < prices.size - 1
    while (i < prices.size - 1 && prices[i] >= prices[i+1]); i +=1; end;
    valley = prices[i]
    while(i < prices.size - 1  && prices[i] <= prices[i+1]); i += 1; end;
    peak = prices[i]
    maxprofit += peak - valley
  end
  maxprofit
    
end
