# Leetcode: 1137. N-th Tribonacci Number.
# https://leetcode.com/problems/n-th-tribonacci-number/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/639/week-4-september-22nd-september-28th/3986/
# @param {Integer} n
# @return {Integer}
def tribonacci(n)
  a,b,c = 0,1,1
  return a if 0 == n
  return b if 1 == n
  return c if 2 == n
  (n-2).times do 
    a,b,c = b,c,a+b+c
  end
  return c
end
