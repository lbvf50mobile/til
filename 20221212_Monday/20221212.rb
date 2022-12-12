# Leetcode: 70. Climbing Stairs.
# https://leetcode.com/problems/climbing-stairs/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 143 ms, faster than 49.02% of Ruby online submissions for Climbing Stairs.
# Memory Usage: 210.9 MB, less than 76.95% of Ruby online submissions for Climbing Stairs.
# 2022.12.12 Daily Challenge.
# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  ways = 1 # Step 0, 1 way.
  w1, w2 = 0,0 # Step 1 and 2, not calcutated.
  (1..n).each do |i|
    w1, w2 = w1 + ways, w2 + ways
    ways, w1 = w1, w2
    w2 = 0
  end
  return ways
end
