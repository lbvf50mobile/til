# Leetcode: 29. Divide Two Integers.
# https://leetcode.com/problems/divide-two-integers/
# @param {Integer} dividend
# @param {Integer} divisor
# @return {Integer}
def divide(dividend, divisor)
  return 0 if 0 == dividend 
  a = dividend > 0 ? 1 : -1
  b = divisor > 0 ? 1 : -1
  dividend = - dividend if dividend < 0
  divisor = - divisor if divisor < 0
  dividend = 2147483647 if dividend == 2147483648
  a*b*dividend if 1 == b
  l,r = 0, 2**31
  ans = 0
  while l <= r
    tmp = ((r - l) >> 1)
    m = l + tmp
    x = mul(m,divisor)
    return a*b*m if x == dividend
    if x <= dividend
      ans = m
      l = m + 1
    else
      r = m - 1
    end
  end
  a*b*ans
end


def mul(a,b)
  a*b
end
