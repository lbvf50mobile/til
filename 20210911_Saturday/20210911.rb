# Leetcode: 224. Basic Calculator.
# https://leetcode.com/problems/basic-calculator/description/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/637/week-2-september-8th-september-14th/3971/
# @param {String} s
# @return {Integer}
def calculate(s)
  last = s.size - 1
  total = 0
  sign = 1 # it means +;
  current = 0
  is_char = ->index{ s[index].ord.between?(?0.ord,?9.ord)}
  stack = []
  (0...s.size).each do |i|
    char = s[i]
    if ?+ == char
      sign = 1
    elsif ?- == char
      sign = -1
    elsif " " == char
      ; # do nothin on spacebar;
    elsif ?( == char
      stack.push([total,sign])
      total = 0
      sign = 1
      current = 0
    elsif ?) == char
      prev_total, prev_sign = stack.pop()
      current = 0
      total = prev_total + prev_sign * total
      sign = 0
    elsif is_char[i]
      current = current*10 + char.to_i
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
