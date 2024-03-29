# Leetcode: 1359. Count All Valid Pickup and Delivery Options.
# https://leetcode.com/problems/count-all-valid-pickup-and-delivery-options/
# = = = = = = = = = = = = = =
# Acceted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 56 ms, faster than 100.00% of Ruby online submissions for Count All
# Valid Pickup and Delivery Options.
# Memory Usage: 211 MB, less than 100.00% of Ruby online submissions for Count
# All Valid Pickup and Delivery Options.
# 2023.09.10 Daily Challenge.
# @param {Integer} n
# @return {Integer}
def count_orders(n)
  # Based on:
  # https://leetcode.com/problems/count-all-valid-pickup-and-delivery-options/discuss/516941/Python-O(n)-with-detailed-explanations
  ans = 1
  mod = (10**9) + 7
  (1..n).each do |i|
    ans *= i * (2*i-1)
    ans %= mod
  end
  return ans
end
