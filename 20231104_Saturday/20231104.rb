# Leetcode: 1503. Last Moment Before All Ants Fall Out of a Plank.
# https://leetcode.com/problems/last-moment-before-all-ants-fall-out-of-a-plank/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 75 ms, faster than 100.00% of Ruby online submissions for Last Moment
# Before All Ants Fall Out of a Plank.
# Memory Usage: 213 MB, less than 100.00% of Ruby online submissions for Last
# Moment Before All Ants Fall Out of a Plank.
# 2023.11.04 Daily Challenge.
# @param {Integer} n
# @param {Integer[]} left
# @param {Integer[]} right
# @return {Integer}
def get_last_moment(n, left, right)
  # Based on the Leetcode's solution:
  # https://leetcode.com/problems/last-moment-before-all-ants-fall-out-of-a-plank/solution/
  ans = 0
  left.each do |x|
    ans = x if x > ans
  end
  right.each do |x|
    ans = n - x if n-x > ans
  end
  return ans
end
