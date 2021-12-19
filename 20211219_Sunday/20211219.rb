# Leetcode: 394. Decode String.
# https://leetcode.com/problems/decode-string/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 48 ms, faster than 92.31% of Ruby online submissions for Decode String.
# Memory Usage: 209.9 MB, less than 23.08% of Ruby online submissions for Decode String.
# @param {String} s
# @return {String}
def decode_string(s)
  repeat_stack = []
  answer = []
  argument = []
  nested_level = 0
  s.chars.each do |c|
    if 0 == nested_level
      answer.push(c) if /[a-z]/ === c
      repeat_stack.push(c) if /\d/ === c
      nested_level += 1 if ?[ == c
      next
    end
    if ?] == c && 1 == nested_level
      mul = repeat_stack.empty? ? 1 : repeat_stack.join.to_i
      answer.push(decode_string(argument.join) * mul)
      nested_level = 0
      argument = []
      repeat_stack = []
      next
    end
    argument.push(c)
    nested_level += 1 if ?[ == c
    nested_level -= 1 if ?] == c
  end
  answer.join
end
