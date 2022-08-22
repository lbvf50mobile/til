# Leetcode: 342. Power of Four.
# https://leetcode.com/problems/power-of-four/
# = = = = = = = = = = = = = = 
# Accetped.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 96 ms, faster than 90.48% of Ruby online submissions for Power of Four.
# Memory Usage: 211.1 MB, less than 38.10% of Ruby online submissions for Power of Four.
# @param {Integer} n
# @return {Boolean}
def is_power_of_four(n)
  return true if 1 == n
  return false if n < 1
  ans = true
  str = n.to_s(2)
  # Errors were here need to set bouns of the string.
  if /^10+$/ === str
    ans = str.size.odd? # 1 + even number of zeros.
  else
    ans = false
  end
  return ans
end
