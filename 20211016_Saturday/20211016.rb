# Leetcode: 123. Best Time to Buy and Sell Stock III.
# https://leetcode.com/problems/best-time-to-buy-and-sell-stock-iii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 381 ms, faster than 25.00% of Ruby online submissions for Best Time to Buy and Sell Stock III.
# Memory Usage: 219.5 MB, less than 54.17% of Ruby online submissions for Best Time to Buy and Sell Stock III.
# Solution based on:
# https://leetcode.com/problems/best-time-to-buy-and-sell-stock-iii/discuss/39611/Is-it-Best-Solution-with-O(n)-O(1)
# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  # https://leetcode.com/problems/best-time-to-buy-and-sell-stock-iii/discuss/39611/Is-it-Best-Solution-with-O(n)-O(1).
  hold1,hold2 = (-Float::INFINITY),(-Float::INFINITY)
  release1,release2 = 0,0
  prices.each do |price|
    # Assume we only have 0 money at first.
    release2 = max(release2,hold2+price) # The maximum if we've just sold 2nd stock so far.
    hold2 = max(hold2, release1-price) # The maximum if we've just buy 2nd stock of far.
    release1 = max(release1, hold1+price) # The maximum if we've just sold 1st stock so far.
    hold1 = max(hold1, -price) # The maximum if we've just buy 1st stock so far.
  end
  release2 # Since reliease1 is initiated as 0, so release2 will always higher than release1.
end
def max(a,b)
  return a if a >b
  return b
end
