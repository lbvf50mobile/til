# Leetcode: 1732. Find the Highest Altitude.
# https://leetcode.com/problems/find-the-highest-altitude/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 91 ms, faster than 44.44% of Ruby online submissions for Find the
# Highest Altitude.
# Memory Usage: 211.1 MB, less than 27.78% of Ruby online submissions for Find
# the Highest Altitude.
# 2023.06.19 Daily Challenge.
# @param {Integer[]} gain
# @return {Integer}
def largest_altitude(gain)
  cur = 0
  max = 0
  gain.each do |x|
    cur += x
    max = cur if cur > max
  end
  return max
end
