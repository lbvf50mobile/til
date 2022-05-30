# Leetcode: 29. Divide Two Integers.
# https://leetcode.com/problems/divide-two-integers/
# @param {Integer} dividend
# @param {Integer} divisor
# @return {Integer}
def divide(dividend, divisor)
  a = dividend > 0 ? 1 : -1
  b = divisor > 0 ? 1 : -1
  dividend = - dividend if dividend < 0
  divisor = - divisor if divisor < 0
    
end
