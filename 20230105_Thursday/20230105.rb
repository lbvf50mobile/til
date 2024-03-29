# Leetcode: 452. Minimum Number of Arrows to Burst Balloons.
# https://leetcode.com/problems/minimum-number-of-arrows-to-burst-balloons/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 578 ms, faster than 77.78% of Ruby online submissions for Minimum Number of Arrows to Burst Balloons.
# Memory Usage: 224.6 MB, less than 55.56% of Ruby online submissions for Minimum Number of Arrows to Burst Balloons.
# 2023.01.05 Daily Challenge.
# @param {Integer[][]} points
# @return {Integer}
def find_min_arrow_shots(points)
  # Solution based on:
  # https://leetcode.com/problems/minimum-number-of-arrows-to-burst-balloons/discuss/1686627/C%2B%2BJavaPython-6-Lines-oror-Sort-and-Greedy-oror-Image-Explanation
  x = points.sort_by(&:last)
  counter, last_arrow = 0,0
  x.each do |start, finish|
    if 0 == counter || start > last_arrow
      counter += 1
      last_arrow = finish
    end
  end
  return counter
end
