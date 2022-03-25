# Leetcode: 1029. Two City Scheduling.
# https://leetcode.com/problems/two-city-scheduling/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 121 ms, faster than 33.33% of Ruby online submissions for Two City Scheduling.
# Memory Usage: 211.1 MB, less than 66.67% of Ruby online submissions for Two City Scheduling.
# @param {Integer[][]} costs
# @return {Integer}
def two_city_sched_cost(costs)
  # Based on: 
  # https://leetcode.com/problems/two-city-scheduling/discuss/761411/python3-solution-that-beats-97-with-explanation
  # Firs assume that every one is going to city A.
  # Then identify N pople to go to city B.
  # according to how much they can halp save
  # when changing to destination to city B.
  n = costs.size/2
  total_cost_a = 0
  diff = []
  costs.each do |(a,b)|
    total_cost_a += a
    diff.push(a - b)
  end
  diff = diff.sort.reverse
  total_cost_a - diff[0...n].sum
end

