# Leetcode: 1833. Maximum Ice Cream Bars.
# https://leetcode.com/problems/maximum-ice-cream-bars/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 498 ms, faster than 100.00% of Ruby online submissions for Maximum Ice Cream Bars.
# Memory Usage: 226.4 MB, less than 100.00% of Ruby online submissions for Maximum Ice Cream Bars.
# 2023.01.06 Daily Challenge.
# @param {Integer[]} costs
# @param {Integer} coins
# @return {Integer}
def max_ice_cream(costs, coins)
  counter = 0
  costs.sort.each do |price|
    if price <= coins
      counter += 1
      coins -= price
    else
      break
    end
  end
  return counter
end
