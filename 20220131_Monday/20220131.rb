# Leetcode: 1672. Richest Customer Wealth.
# https://leetcode.com/problems/richest-customer-wealth/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 131 ms, faster than 6.98% of Ruby online submissions for Richest Customer Wealth.
# Memory Usage: 211.3 MB, less than 9.30% of Ruby online submissions for Richest Customer Wealth.
#
# @param {Integer[][]} accounts
# @return {Integer}
def maximum_wealth(accounts)
  accounts.map(&:sum).max
end
