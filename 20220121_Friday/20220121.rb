# Leetcode: 134. Gas Station.
# https://leetcode.com/problems/gas-station/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 219 ms, faster than 9.09% of Ruby online submissions for Gas Station.
# Memory Usage: 216.8 MB, less than 9.09% of Ruby online submissions for Gas Station.
# @param {Integer[]} gas
# @param {Integer[]} cost
# @return {Integer}
def can_complete_circuit(gas, cost)
  # Based on: https://leetcode.com/problems/gas-station/discuss/860347/Python-simple-and-very-short-explained-solution-O(n)-O(1)-faster-than-98
  starting_point = 0
  gas_tank = 0
  return -1 if gas.sum < cost.sum
  gas.zip(cost).each_with_index do |(gas_, cost_),i|
    gas_tank += (gas_ - cost_)
    if gas_tank < 0
      gas_tank = 0
      starting_point = i+1
    end
  end
  return starting_point
end
