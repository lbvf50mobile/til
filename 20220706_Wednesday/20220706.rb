# Leetcode: 509. Fibonacci Number.
# https://leetcode.com/problems/fibonacci-number/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 101 ms, faster than 83.24% of Ruby online submissions for Fibonacci Number.
# Memory Usage: 211.1 MB, less than 37.30% of Ruby online submissions for Fibonacci Number.
# @param {Integer} n
# @return {Integer}
def fib(n)
  return 0 if 0 == n
  return 1 if 1 == n
  i = 1
  a, b = 0, 1
  while i < n
    a,b = b, a+b
    i += 1
  end
  return b
end
