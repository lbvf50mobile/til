# Leetcode: 856. Score of Parentheses.
# https://leetcode.com/problems/score-of-parentheses/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 60 ms, faster than 100.00% of Ruby online submissions for Score of Parentheses.
# Memory Usage: 210.9 MB, less than 42.86% of Ruby online submissions for Score of Parentheses.
# @param {String} s
# @return {Integer}
def score_of_parentheses(s)
  stack = [0]
  s.chars do |x|
    if ?( == x
      stack.push 0
    else
      value = stack.pop
      value = 0 == value ? 1 : value * 2
      stack[stack.size-1] += value
    end
  end
  stack.last
end
