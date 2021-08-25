# Leetcode: 633. Sum of Square Numbers.
# https://leetcode.com/problems/sum-of-square-numbers/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/problems/sum-of-square-numbers/solution/
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/616/week-4-august-22nd-august-28th/3918/
# @param {Integer} c
# @return {Boolean}
def judge_square_sum(c)
  a = 0
  while a*a <= c
    b = Math.sqrt(c - a*a)
    return true if b == b.to_i
    a += 1
  end
  return false
end
