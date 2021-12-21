# Leetcode: 231. Power of Two.
# https://leetcode.com/problems/power-of-two/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 56 ms, faster than 83.78% of Ruby online submissions for Power of Two.
# Memory Usage: 209.9 MB, less than 62.16% of Ruby online submissions for Power of Two.
# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
  n > 0 && n.to_s(2).chars.count(?1) == 1
end
