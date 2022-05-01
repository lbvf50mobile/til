# Leetcode: 844. Backspace String Compare.
# https://leetcode.com/problems/backspace-string-compare/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 84 ms, faster than 81.18% of Ruby online submissions for Backspace String Compare.
# Memory Usage: 211.2 MB, less than 9.41% of Ruby online submissions for Backspace String Compare.
# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)
  construct_string(s) == construct_string(t)
end

def construct_string(s)
  stack = []
  s.chars.each do |c|
    if ?# == c
      stack.pop
    else
      stack.push c
    end
  end
  stack.join
end

