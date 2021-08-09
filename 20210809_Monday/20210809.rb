# Leetcode: 415. Add Strings.
# https://leetcode.com/problems/add-strings/
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/614/week-2-august-8th-august-14th/3875/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# @param {String} num1
# @param {String} num2
# @return {String}
def add_strings(num1, num2)
  n1 = num1.to_s.chars.map(&:to_i)
  n2 = num2.to_s.chars.map(&:to_i)
  register = 0
  answer = []
  while (! n1.empty?) || (! n2.empty?)
    a1 = n1.empty? ? 0 : n1.pop
    a2 = n2.empty? ? 0 : n2.pop
    sum = register + a1 + a2
    register = 0
    register = 1 if sum >= 10
    answer.push(sum % 10)
  end
  answer.push(1) if 1 == register
  answer.reverse.map(&:to_s).join
end
