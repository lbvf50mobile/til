# Leetcode: 342. Power of Four.
# https://leetcode.com/problems/power-of-four
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 64 ms, faster than 31.25% of Ruby online submissions for Power of
# Four.
# Memory Usage: 211 MB, less than 62.50% of Ruby online submissions for Power of
# Four.
# 2023.10.23 Daily Challenge.
# @param {Integer} n
# @return {Boolean}
def is_power_of_four(n)
  return false if n <= 0
  # This means in binary format n must be 1 and even number of zeros.
  while 0 == n%4
    n /= 4
  end
  n == 1
end
