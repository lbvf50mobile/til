# Leetcode: 134. Gas Station.
# https://leetcode.com/problems/gas-station/
# = = = = = = = = = = = = = =
# Accpeted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 137 ms, faster than 91.67% of Ruby online submissions for Gas Station.
# Memory Usage: 217.6 MB, less than 16.67% of Ruby online submissions for Gas Station.
# 2023.01.07 Daily Challenge.
# @param {Integer[]} gas
# @param {Integer[]} cost
# @return {Integer}
def can_complete_circuit(gas, cost)
  # Based on:
  # https://leetcode.com/problems/gas-station/discuss/42568/Share-some-of-my-ideas.
  tank, all_way,all_gas,start = 0,0,0,0
  gas.size.times do |i|
    all_way += cost[i]
    all_gas += gas[i]
    if tank + gas[i] < cost[i]
      start = i+1 # Here was an error. Fixed.
      tank = 0
    else
      tank += gas[i] - cost[i]
    end
  end
  return -1 if all_gas < all_way
  return start
end
