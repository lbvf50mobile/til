# Leetcode: 537. Complex Number Multiplication.
# https://leetcode.com/problems/complex-number-multiplication/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/problems/complex-number-multiplication/solution/262665
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/616/week-4-august-22nd-august-28th/3917/
# @param {String} num1
# @param {String} num2
# @return {String}
def complex_number_multiply(num1, num2)
  a,ai = num1.scan(/^(.*)\+(.*)i/)[0].map(&:to_i)
  b,bi = num2.scan(/^(.*)\+(.*)i/)[0].map(&:to_i)
  real = (a*b - ai*bi).to_s
  image = (a*bi + b*ai).to_s
  "#{real}+#{image}i"
end
