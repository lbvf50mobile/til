# Leetcode: 263. Ugly Number.
# https://leetcode.com/problems/ugly-number/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 167 ms, faster than 20.00% of Ruby online submissions for Ugly Number.
# Memory Usage: 210.9 MB, less than 85.00% of Ruby online submissions for Ugly Number.
# 2022.11.18 Daily Challenge.
# @param {Integer} n
# @return {Boolean}
def is_ugly(n)
  return false if 0 >= n
  n = div_till(n,2)
  n = div_till(n,3)
  n = div_till(n,5)
  return 1 == n
end

def div_till(dividend, divizor)
  while 0 == dividend%divizor
    dividend /= divizor
  end
  return dividend
end
