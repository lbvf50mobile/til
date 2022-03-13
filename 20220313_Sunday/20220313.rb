# Leetcode: 20. Valid Parentheses.
# https://leetcode.com/problems/valid-parentheses/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 128 ms, faster than 33.94% of Ruby online submissions for Valid Parentheses.
# Memory Usage: 211.8 MB, less than 7.74% of Ruby online submissions for Valid Parentheses.
# @param {String} s
# @return {Boolean}
def is_valid(s)
  close_open = { ?) => ?(, ?] => ?[, ?} => ?{ }
  stack = []
  s.chars.each do |x|
    if ?( == x || ?[ == x || ?{ == x
      stack.push x
    else
      return false if stack.empty? || stack.last != close_open[x]
      stack.pop
    end
  end
  stack.empty?
end
