# Leetcode: 121. Best Time to Buy and Sell Stock.
# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 320 ms, faster than 10.97% of Ruby online submissions for Best Time to Buy and Sell Stock.
# Memory Usage: 220.9 MB, less than 19.13% of Ruby online submissions for Best Time to Buy and Sell Stock.
# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  # Need to create monotonic, stricly increasing stack.
  stack = [prices[0]]
  ans = 0
  (1...prices.size).each do |i|
    x = prices[i]
    # Loop while where is something to pop.
    while !stack.empty? && stack.last >= x 
      stack.pop if stack.last >= x
    end
    # Always push.
    stack.push(x)
    # Calculate difference between smallest and biggest 
    # values.
    if stack.size > 1
      diff = stack.last - stack.first
      ans = diff if  ans < diff
    end
  end
  return ans
end
