# Leetcode: 746. Min Cost Climbing Stairs.
# https://leetcode.com/problems/min-cost-climbing-stairs
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 76 ms, faster than 17.89% of Ruby online submissions for Min Cost
# Climbing Stairs.
# Memory Usage: 211.4 MB, less than 85.26% of Ruby online submissions for Min
# Cost Climbing Stairs.
# 2023.10.13 Daily Challenge.
# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
  # Pull DP. Inplace solution.
  # Select minimum from i-1 and i-2, plus current.
  
  # If less then three elements no need to count.
  return cost.min if 2 >= cost.size

  
  (2...cost.size).each do |i|
    cost[i] = [cost[i-1],cost[i-2]].min + cost[i]
  end

  # Return minumum from two lest steps to reach the end.
  return [cost[-1], cost[-2]].min
end
