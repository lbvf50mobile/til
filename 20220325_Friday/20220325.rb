# Leetcode: 1029. Two City Scheduling.
# https://leetcode.com/problems/two-city-scheduling/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 119 ms, faster than 33.33% of Ruby online submissions for Two City Scheduling.
# Memory Usage: 211.1 MB, less than 66.67% of Ruby online submissions for Two City Scheduling
# @param {Integer[][]} costs
# @return {Integer}
def two_city_sched_cost(costs)
  # Based on: 
  # https://leetcode.com/problems/two-city-scheduling/discuss/761411/python3-solution-that-beats-97-with-explanation
  n = costs.size/2
  all_to_a = 0
  profit_if_got_to_b = []
  costs.each do |(a,b)|
    all_to_a += a
    profit_if_got_to_b.push(a-b)
  end
  half = profit_if_got_to_b.sort_by{|x| -x}[0...n].sum
  all_to_a - half
end

