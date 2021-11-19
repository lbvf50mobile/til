# Leetcode: 461. Hamming Distance.
# https://leetcode.com/problems/hamming-distance/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 60 ms, faster than 52.00% of Ruby online submissions for Hamming Distance.
# Memory Usage: 210 MB, less than 20.00% of Ruby online submissions for Hamming Distance.
# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
  x,y = x.to_s(2), y.to_s(2)
  x = x.rjust(40,?0)
  y = y.rjust(40,?0)
  x.chars.zip(y.chars).map{|(x,y)| x != y ? 1 : 0}
    .sum
end
