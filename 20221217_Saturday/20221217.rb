# Leetcode: 150. Evaluate Reverse Polish Notation.
# https://leetcode.com/problems/evaluate-reverse-polish-notation/
# @param {String[]} tokens
# @return {Integer}
def eval_rpn(tokens)
  s = []
  first, second, action = nil, nil, nil
  # first + second = answer
  tokens.each_with_index do |x,i|
    s.push(x)
    p x
    if ?+ == x || ?* == x || ?- == x || ?/ == x
      action = s.pop
      second = (s.pop()).to_i
      first = (s.pop()).to_i if first.nil?
      it = i == tokens.size - 1 || in_(tokens[i+1])
      if  it
        p "#{first} #{action} #{second}"
      else
        p "#{second} #{action} #{first}"
      end
      if ?+ == action
        if it
          first = first + second
        else
          first = second + first
        end
      elsif ?* == action
        if it
          first = first * second
        else
          first = second * first
        end
      elsif ?- == action
        if it
          first = first - second
        else
          first = second - first
        end
      elsif ?/ == action
        if it
          first = first / second
        else
          first = second / first
        end
      else
        raise "Unknown action."
      end
      p "#{first}"
    end
  end
  return first
end

def in_(x)
  ?+ == x || ?* == x || ?- == x || ?/ == x
end

