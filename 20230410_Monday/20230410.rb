# Leetcode: 20. Valid Parentheses.
# https://leetcode.com/problems/valid-parentheses/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 99 ms, faster than 17.07% of Ruby online submissions for Valid
# Parentheses.
# Memory Usage: 211.1 MB, less than 67.63% of Ruby online submissions for Valid
# Parentheses.
# 2023.04.10 Daily Challenge.
# @param {String} s
# @return {Boolean}
def is_valid(s)
  s = s.chars
  open = {?(=>?),?[=>?],?{=>?}}
  close = {?)=>?(, ?] => ?[, ?} => ?{}
  stack = []
  s.each do |x|
    if open[x]
      stack.push(x)
    else
      return false if stack.empty?
      return false if stack.last != close[x]
      stack.pop
    end
  end
  return stack.empty?
end
