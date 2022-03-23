# Leetcode: 991. Broken Calculator.
# https://leetcode.com/problems/broken-calculator/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 172 ms, faster than 100.00% of Ruby online submissions for Broken Calculator.
# Memory Usage: 210.9 MB, less than 100.00% of Ruby online submissions for Broken Calculator.
# @param {Integer} start_value
# @param {Integer} target
# @return {Integer}
def broken_calc(start_value, target)
  # Based on: https://leetcode.com/problems/broken-calculator/solution/
  ans = 0
  while target > start_value
    ans += 1
    target = target.even? ? target/2 : target + 1
  end
  ans + (start_value - target)
end
