# Leetcode: 224. Basic Calculator.
# https://leetcode.com/problems/basic-calculator/description/
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/637/week-2-september-8th-september-14th/3971/
# @param {String} s
# @return {Integer}
def calculate(s)
  last = s.size - 1
  total = 0
  sign = 1 # it means +;
  current = 0
  is_char = ->index{ s[index].ord.between?(?0.ord,?9.ord)}
  (0...s.size).each do |i|
    char = s[i]
    if ?+ == char
      sign = 1
    elsif ?- == char
      sign = -1
    elsif " " == char
      ; # do nothin on spacebar;
    elsif is_char[i]
      # First digit in a number. (I think this might be improved, if current is zero first and not first could be skipped)
      if 0 == i || ! is_char[i-1]
        current = char.to_i
      # Not last digit in a number.
      else
        current = current*10 + char.to_i
      end
      # And time to increase change the total.
      if last == i || ! is_char[i+1]
        raise "At i = #{i} and char = #{char} no sign" if 0 == sign
        total += sign * current
        current = 0
        sign = 0
      end
    end
  end
  return total 
end
