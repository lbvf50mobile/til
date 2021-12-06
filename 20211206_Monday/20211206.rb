# Leetcode: 1217. Minimum Cost to Move Chips to The Same Position.
# https://leetcode.com/problems/minimum-cost-to-move-chips-to-the-same-position/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 48 ms, faster than 100.00% of Ruby online submissions for Minimum Cost to Move Chips to The Same Position.
# Memory Usage: 209.7 MB, less than 85.71% of Ruby online submissions for Minimum Cost to Move Chips to The Same Position.
# @param {Integer[]} position
# @return {Integer}
def min_cost_to_move_chips(position)
  even_sum, odd_sum = 0, 0
  (0...position.size).each do |i|
    if position[i].even?
      even_sum += 1
    else
      odd_sum += 1
    end
  end
  even_sum < odd_sum ? even_sum : odd_sum
end
