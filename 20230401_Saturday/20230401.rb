# Leetcode: 704. Binary Search.
# https://leetcode.com/problems/binary-search/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 95 ms, faster than 73.71% of Ruby online submissions for Binary
# Search.
# Memory Usage: 214 MB, less than 13.43% of Ruby online submissions for Binary
# Search.
# 2023.04.01 Daily Challenge.
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  l,r = 0,nums.size-1
  while l <= r
    m = l +(r-l)/2
    return m if target == nums[m]
    if target < nums[m] # !important compare with a func output!
      r = m - 1
    else
      l = m + 1
    end
  end
  return -1
end
