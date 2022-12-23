# Leetcode: 309. Best Time to Buy and Sell Stock with Cooldown.
# https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-cooldown/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 90 ms, faster than 85.71% of Ruby online submissions for Best Time to Buy and Sell Stock with Cooldown.
# Memory Usage: 211.4 MB, less than 14.29% of Ruby online submissions for Best Time to Buy and Sell Stock with Cooldown.
# 2022.12.23 Daily Challenge.
# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  # Based on:
  # https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-cooldown/discuss/75928/Share-my-DP-solution-(By-State-Machine-Thinking)
  return 0 if prices.empty?
  n = prices.size
  # Element of the array is amount of money earned.
  s0 = Array.new(n,0) # Do nothing day.
  s1 = Array.new(n,0) # Buying day (Or staing fullfilled).
  s2 = Array.new(n,0) # Selling day.
  s0[0] = 0 # Do nothing, have noting.
  s1[0] = - prices[0] # Buy and spend money.
  s2[0] = - Float::INFINITY # Superminimum have nothing to sell.
  (1...n).each do |j|
    i = j - 1
    s0[j] = [s0[i], s2[i]].max
    s1[j] = [s1[i],s0[i] - prices[j]].max
    s2[j] = s1[i] + prices[j]
  end
  [s0.last,s1.last,s2.last].max
end
