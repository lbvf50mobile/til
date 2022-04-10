# Leetcode: 682. Baseball Game.
# https://leetcode.com/problems/baseball-game/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 131 ms, faster than 50.00% of Ruby online submissions for Baseball Game.
# Memory Usage: 210.9 MB, less than 75.00% of Ruby online submissions for Baseball Game.
# @param {String[]} ops
# @return {Integer}
def cal_points(ops)
  stack = []
  ops.each do |c|
    if ?C == c
      stack.pop
    elsif ?D == c
      stack.push(stack.last*2)
    elsif ?+ == c
      stack.push(stack[-1] + stack[-2])
    else
      stack.push(c.to_i)
    end
  end
  stack.sum
end
