# Leetcode: 224. Basic Calculator.
# https://leetcode.com/problems/basic-calculator/
# = = = = = = = = = = = = = =
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 283 ms, faster than 54.55% of Ruby online submissions for Basic Calculator.
# Memory Usage: 225.6 MB, less than 9.09% of Ruby online submissions for Basic Calculator.
# 2022.11.20 Daily Challenge.
# @param {String} s
# @return {Integer}
def calculate(s)
  # Signs. outer and current.
  # - == -1
  # + == 1
  outer = [1] # start with +.
  current = 1 # Begin as +;
  number = 0
  total = 0
  s.chars.each_with_index do |c,i|
    if ?+ == c
      current = outer.last
    elsif ?- == c
      current = - outer.last
    elsif ?( == c
      outer.push(current)
    elsif ?) == c
      outer.pop
      current = outer.last
    elsif " " == c
      ;
    elsif ?0 <= c && c <= ?9
      number = number*10 + c.to_i
      # Last digit.
      if s.size - 1 == i || (! s[i+1].ord.between?(?0.ord,?9.ord)) 
        total += current * number
        current = outer.last
        number = 0
      end
    else
      raise "Unknown position."
    end
  end
  return total
end
