# Leetcode: 1137. N-th Tribonacci Number.
# https://leetcode.com/problems/n-th-tribonacci-number/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 71 ms, faster than 94.87% of Ruby online submissions for N-th Tribonacci Number.
# Memory Usage: 210.9 MB, less than 74.36% of Ruby online submissions for N-th Tribonacci Number.
# 2023.01.30 Daily Challenge.
# @param {Integer} n
# @return {Integer}
def tribonacci(n)
  a, b, c = 0, 1, 1
  return a if 0 == n
  return b if 1 == n
  return c if 2 == n
  i = 3
  while i <= n 
    a,b,c = b, c, a+b+c
    i += 1
  end
  return c
end
