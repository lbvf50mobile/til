# Leetcode: 1009. Complement of Base 10 Integer.
# https://leetcode.com/problems/complement-of-base-10-integer/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 112 ms, faster than 100.00% of Ruby online submissions for Complement of Base 10 Integer.
# Memory Usage: 209.6 MB, less than 100.00% of Ruby online submissions for Complement of Base 10 Integer.
# @param {Integer} n
# @return {Integer}
def bitwise_complement(n)
  return 1 if 0 == n
  answer = 0
  bit_number = 0
  while 0 != n
    bit = n%2
    inverted_bit = 1 == bit ? 0 : 1
    answer += (inverted_bit << bit_number)
    n = n >> 1
    bit_number += 1
  end
  answer
end
