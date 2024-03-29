# Leetcode: 2009. Minimum Number of Operations to Make Array Continuous.
# https://leetcode.com/problems/minimum-number-of-operations-to-make-array-continuous/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 705 ms, faster than 100.00% of Ruby online submissions for Minimum
# Number of Operations to Make Array Continuous.
# Memory Usage: 245.9 MB, less than 100.00% of Ruby online submissions for
# Minimum Number of Operations to Make Array Continuous.
# 2023.10.10 Daily Challenge.
# @param {Integer[]} nums
# @return {Integer}
require "set"
def min_operations(nums)
  n = nums.size
  ans = n
  new_nums = Set.new(nums).to_a.sort
  new_nums.size.times do |i|
    l = new_nums[i]
    r = l + n - 1
    j = bs(new_nums,r)
    count = j - i
    ans = n - count if n - count < ans
  end
  return ans
end

def bs(new_nums, target)
  l = 0
  r = new_nums.size
  while l < r
    m = l + (r-l)/2
    if target < new_nums[m]
      r = m
    else
      l = m + 1
    end
  end
  return l
end
