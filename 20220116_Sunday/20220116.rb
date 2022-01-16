# Leetcode: 849. Maximize Distance to Closest Person.
# https://leetcode.com/problems/maximize-distance-to-closest-person/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 124 ms, faster than 14.29% of Ruby online submissions for Maximize Distance to Closest Person.
# Memory Usage: 210.6 MB, less than 100.00% of Ruby online submissions for Maximize Distance to Closest Person.
# @param {Integer[]} seats
# @return {Integer}
def max_dist_to_closest(seats)
  delta_left = 0
  while delta_left < seats.size && 0 == seats[delta_left]
    delta_left += 1
  end
  delta_right = 0
  while delta_right >= 0  && 0 == seats[seats.size - 1 - delta_right]
    delta_right += 1
  end
  gap = 0
  max_gap = 0
  (delta_left..seats.size - 1 - delta_right).each do |i|
    if 1 == seats[i]
      gap = 0
    else
      gap += 1
    end
    max_gap = gap if gap > max_gap
  end
  delta_center = 0
  if max_gap.even?
    delta_center = max_gap/2
  else
    delta_center = max_gap/2 + 1
  end
  [delta_left, delta_right, delta_center].max
end
