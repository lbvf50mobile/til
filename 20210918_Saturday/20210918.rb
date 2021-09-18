# Leetcode: 282. Expression Add Operators.
# https://leetcode.com/problems/expression-add-operators/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/638/week-3-september-15th-september-21st/3979/
# @param {String} num
# @param {Integer} target
# @return {String[]}
def add_operators(num, target)
  # https://leetcode.com/problems/expression-add-operators/solution/
  @num, @target = num, target
  @n = num.size
  @answers = []
  rec(0,0,0,0,[])
  @answers
end

def rec(index, prev_operand, current_operand, value, string)
  # Done processing all the digints in num.
  if @n == index
    # If the final value === target expected AND
    # no operands is left unprecessed.
    if value == @target && 0 == current_operand
      @answers.push(string[1..-1].join)
    end
    return
  end
  # Extending the current operand by one digit.
  current_operand = current_operand*10 + @num[index].to_i
  str_op = current_operand.to_s
  # To avoid cases where we have 1 + 05 or 1 *05 since 05 wot't be a 
  # valid poeran. Hence this check.
  if current_operand > 0
    # NO OP recursion.
    rec(index + 1, prev_operand, current_operand, value, string)
  end
  # Addition.
  string.push(?+,str_op)
  rec(index + 1, current_operand, 0, value + current_operand, string)
  string.pop(2)
  # Can subract or multiply only if there are some previous operands.
  if ! string.empty?
    # Subtraction.
    string.push(?-,str_op)
    rec(index + 1, -current_operand, 0, value - current_operand, string)
    string.pop(2)
    # Multiplication.
    string.push(?*,str_op)
    rec(index + 1, current_operand * prev_operand, 0, value - prev_operand + (current_operand * prev_operand), string)
    string.pop(2)
  end
end
