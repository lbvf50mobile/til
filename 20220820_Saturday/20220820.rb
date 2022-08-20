# Leetcode: 871. Minimum Number of Refueling Stops.
# https://leetcode.com/problems/minimum-number-of-refueling-stops/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 697 ms, faster than 100.00% of Ruby online submissions for Minimum Number of Refueling Stops.
# Memory Usage: 223.3 MB, less than 100.00% of Ruby online submissions for Minimum Number of Refueling Stops.
# @param {Integer} target
# @param {Integer} start_fuel
# @param {Integer[][]} stations
# @return {Integer}
def min_refuel_stops(target, start_fuel, stations)
  # Based on:
  # https://leetcode.com/problems/minimum-number-of-refueling-stops/solution/
  dp = [start_fuel] + [0] * stations.size
  stations.each_with_index do |(location, capacity),i|
    (0..i).reverse_each do |t|
      dp[t+1] = max(dp[t+1], dp[t] + capacity) if dp[t] >= location
    end
  end
  dp.each_with_index do |d,i|
    return i if d >= target
  end
  return -1
end

def max(a,b)
  if a > b
    a
  else
    b
  end
end
