# Leetcode: 2187. Minimum Time to Complete Trips.
# https://leetcode.com/problems/minimum-time-to-complete-trips/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1904 ms, faster than 50.00% of Ruby online submissions for Minimum Time to Complete Trips.
# Memory Usage: 223 MB, less than 100.00% of Ruby online submissions for Minimum Time to Complete Trips.
# 2023.03.07 Daily Challenge.
# @param {Integer[]} time
# @param {Integer} total_trips
# @return {Integer}
def minimum_time(time, total_trips)
  # Based on:
  # https://leetcode.com/problems/minimum-time-to-complete-trips/solution/
  @t,@tr = time, total_trips
  max = @t.max
  l,r = 1, max*@tr 
  # It is not totaly clear how BS behave when:
  # l < r; l = m, r = m ;
  # l <= r; l = m+1; r = m - 1;
  # Need to clarify with experements.
  while l < r
    m = l + (r-l)/2
    if enough(m)
      # To many tme.
      r = m
    else
      # Not enough.
      # Need move right, get more time.
      l = m + 1
    end
  end
  return l
end

def enough(time)
  curr_trips = 0
  @t.each do |trip_time|
    curr_trips += time/trip_time
  end
  # It is possible to make more tips in this time.
  return curr_trips >= @tr
end
