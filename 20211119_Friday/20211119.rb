# Leetcode: 461. Hamming Distance.
# https://leetcode.com/problems/hamming-distance/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 56 ms, faster than 60.00% of Ruby online submissions for Hamming Distance.
# Memory Usage: 209.7 MB, less than 52.00% of Ruby online submissions for Hamming Distance.
# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
  sum = 0
  while (0 != x) || (0 != y)
    sum += 1 if (x%2) != (y%2)
    x = x >> 1
    y = y >> 1
  end
  sum
end
