# Leetcode: 32. Longest Valid Parentheses.
# https://leetcode.com/problems/longest-valid-parentheses/
# @param {String} s
# @return {Integer}
def longest_valid_parentheses(s)
  @s = s
  answer = 0
  # Valid parentheses could starts only from "(".
  (0...@s.size).each do |i|
    if ?( == @s[i]
      x = longest(i)
    end
    answer = x if x > answer
  end
  answer
end

def longest(i)
  l = 0
  stack = []
  (i...@s.size).each do |j|
    c = @s[i]
    if ?( == c
      if 0 == l
        if stack.empty?
          stack.push [i]
        elsif stack.last.last == i - 1
          stack.last.pop
        else
          break
        end

      end
    else

    end
  end
end
