# Leetcode: 191. Number of 1 Bits.
# https://leetcode.com/problems/number-of-1-bits/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 91 ms, faster than 70.37% of Ruby online submissions for Number of 1 Bits.
# Memory Usage: 210.8 MB, less than 92.59% of Ruby online submissions for Number of 1 Bits.
# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  n.to_s(2).count(?1)
end
