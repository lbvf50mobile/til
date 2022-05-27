# Leetcode: 1342. Number of Steps to Reduce a Number to Zero.
# https://leetcode.com/problems/number-of-steps-to-reduce-a-number-to-zero/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 158 ms, faster than 5.88% of Ruby online submissions for Number of Steps to Reduce a Number to Zero.
# Memory Usage: 211.1 MB, less than 11.76% of Ruby online submissions for Number of Steps to Reduce a Number to Zero.
# @param {Integer} num
# @return {Integer}
def number_of_steps(num)
  step = 0
  while num > 0
    if num.even?
      num /= 2
    else
      num -= 1
    end
    step += 1
  end
  step
end
