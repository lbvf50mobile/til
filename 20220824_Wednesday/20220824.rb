# Leetcode: 326. Power of Three.
# https://leetcode.com/problems/power-of-three/ 
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 265 ms, faster than 21.62% of Ruby online submissions for Power of Three.
# Memory Usage: 211.1 MB, less than 48.65% of Ruby online submissions for Power of Three.
# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
  return true if 1 == n
  border = (2**31) - 1
  value = 1
  while value <= border
    return true if value == n
    value *= 3
  end
  return false
end
