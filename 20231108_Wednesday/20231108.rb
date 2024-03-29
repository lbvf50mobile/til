# Leetcode: 2849. Determine if a Cell Is Reachable at a Given Time.
# https://leetcode.com/problems/determine-if-a-cell-is-reachable-at-a-given-time
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 67 ms, faster than 28.57% of Ruby online submissions for Determine if
# a Cell Is Reachable at a Given Time.
# Memory Usage: 211.1 MB, less than 64.29% of Ruby online submissions for
# Determine if a Cell Is Reachable at a Given Time.
# 2023.11.08 Daily Challenge.
# @param {Integer} sx
# @param {Integer} sy
# @param {Integer} fx
# @param {Integer} fy
# @param {Integer} t
# @return {Boolean}
def is_reachable_at_time(sx, sy, fx, fy, t)
  # Based on:
  # https://leetcode.com/problems/determine-if-a-cell-is-reachable-at-a-given-time/solution/
  w = (sx-fx).abs
  h = (sy-fy).abs
  return false if 0 == w && 0 == h && 1 == t
  return t >= w && t >= h
end
