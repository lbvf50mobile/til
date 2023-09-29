# Leetcode: 896. Monotonic Array.
# https://leetcode.com/problems/monotonic-array
# = = = = = = = = = = = = = =
# Accpeted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 151 ms, faster than 35.48% of Ruby online submissions for Monotonic
# Array.
# Memory Usage: 223.4 MB, less than 29.03% of Ruby online submissions for
# Monotonic Array.
# 2023.09.29 Daily Challenge.
# @param {Integer[]} nums
# @return {Boolean}
def is_monotonic(nums)
  x = nums
  up = false
  down = false
  (1...x.size).each do |i|
    return false if up && down
    up = true if x[i-1] < x[i]
    down = true if x[i-1] > x[i]
  end
  return false if up && down
  return true
end
