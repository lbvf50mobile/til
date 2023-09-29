# Leetcode: 896. Monotonic Array.
# https://leetcode.com/problems/monotonic-array
# = = = = = = = = = = = = = =
# Accpeted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 132 ms, faster than 80.65% of Ruby online submissions for Monotonic
# Array.
# Memory Usage: 223.4 MB, less than 80.65% of Ruby online submissions for
# Monotonic Array.
# 2023.09.29 Daily Challenge.
# @param {Integer[]} nums
# @return {Boolean}
def is_monotonic(nums)
  return up(nums) || down(nums)
end

def up(x)
  (1...x.size).each do |i|
    return false if x[i-1] > x[i]
  end
  return true
end

def down(x)
  (1...x.size).each do |i|
    return false if x[i-1] < x[i]
  end
  return true
end
