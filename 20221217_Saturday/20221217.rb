# Leetcode: 150. Evaluate Reverse Polish Notation.
# https://leetcode.com/problems/evaluate-reverse-polish-notation/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 106 ms, faster than 83.33% of Ruby online submissions for Evaluate Reverse Polish Notation.
# Memory Usage: 212 MB, less than 37.50% of Ruby online submissions for Evaluate Reverse Polish Notation.
# 2022.12.17 Daily Challenge.
# @param {String[]} tokens
# @return {Integer}
def eval_rpn(tokens)
  return tokens[0].to_i if 1 == tokens.size
  # Based on:
  # https://en.wikibooks.org/wiki/A-level_Computing_2009/AQA/Problem_Solving,_Programming,_Operating_Systems,_Databases_and_Networking/Problem_Solving/Reverse_Polish_Notation
  s = []
  tokens.each_with_index do |x,i|
    s.push(x)
    if ?+ == x || ?* == x || ?- == x || ?/ == x
      action = s.pop
      second = (s.pop()).to_i
      first = (s.pop()).to_i 
      # p "#{first} #{action} #{second}"
      if ?+ == action
        s.push(first + second)
      elsif ?* == action
        s.push(first * second)
      elsif ?- == action
        s.push(first - second)
      elsif ?/ == action
        # https://leetcode.com/problems/evaluate-reverse-polish-notation/discuss/1229933/Ruby-Stack
        s.push((first.to_f/second).to_i)
      else
        raise "Unknown action."
      end
    end
  end
  return s.pop()
end
