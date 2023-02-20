# Leetcode: 35. Search Insert Position.
# https://leetcode.com/problems/search-insert-position/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 99 ms, faster than 22.30% of Ruby online submissions for Search Insert Position.
# Memory Usage: 211.2 MB, less than 68.99% of Ruby online submissions for Search Insert Position.
# 2023.02.20 Daily Challenge.
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  l,r = 0, nums.size - 1
  while l <= r
    m = l + (r-l)/2
    val = nums[m]
    return m if target == val
    if val < target
      l = m + 1
    else
      r = m - 1
    end
  end
  return l
end
