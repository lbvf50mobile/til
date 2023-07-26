# Leetcode: 1870. Minimum Speed to Arrive on Time.
# https://leetcode.com/problems/minimum-speed-to-arrive-on-time/
# @param {Integer[]} dist
# @param {Float} hour
# @return {Integer}
# TLE
def min_speed_on_time(dist, hour)
  # Based on:
  # https://leetcode.com/problems/minimum-speed-to-arrive-on-time/solution/
  l, r = 1, 10**8
  @d = dist
  ms = -1
  while l <= r
    m = l + (r-l)/2
    if time_req(m) <= hour 
      ms = m
      r = m - 1
    else
      l = m + 1
    end
  end
  ms
end

def time_req(speed)
  time = 0.0
  @d.each_with_index do |d,i|
    t = d.fdiv(speed)
    time += ( @d.size - 1 == i ? t : t.ceil)
  end
  return time
end
