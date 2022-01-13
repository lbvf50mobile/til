# Leetcode: 452. Minimum Number of Arrows to Burst Balloons.
# https://leetcode.com/problems/minimum-number-of-arrows-to-burst-balloons/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 357 ms, faster than 57.14% of Ruby online submissions for Minimum Number of Arrows to Burst Balloons.
# Memory Usage: 222.8 MB, less than 42.86% of Ruby online submissions for Minimum Number of Arrows to Burst Balloons.
# @param {Integer[][]} points
# @return {Integer}
def find_min_arrow_shots(points)
  number = 0
  last_arrow_position = 0
  points.sort_by(&:last).each do |(left,right)|
    if 0 == last_arrow_position || last_arrow_position < left
      number += 1
      last_arrow_position = right
    end
  end
  number
end
