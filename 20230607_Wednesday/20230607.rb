# Leetcode: 1318. Minimum Flips to Make a OR b Equal to c.
# https://leetcode.com/problems/minimum-flips-to-make-a-or-b-equal-to-c/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 96 ms, faster than 33.33% of Ruby online submissions for Minimum
# Flips to Make a OR b Equal to c.
# Memory Usage: 211 MB, less than 66.67% of Ruby online submissions for Minimum
# Flips to Make a OR b Equal to c.
# 2023.06.07 Daily Challenge.
# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @return {Integer}
def min_flips(a, b, c)
  # Based on:
  # https://leetcode.com/problems/minimum-flips-to-make-a-or-b-equal-to-c/solution/
  ans = 0
  while 0 != (a | b |c )
    if 0 != (c & 1)
      one = 0 != (a & 1)
      two = 0 != (b & 1)
      ans += 1 if ! (one || two) 
    else
      ans += (a&1) + (b&1)
    end
    a >>= 1
    b >>= 1
    c >>= 1
  end
  return ans
end
