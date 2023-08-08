# Leetcode: 33. Search in Rotated Sorted Array. 
# https://leetcode.com/problems/search-in-rotated-sorted-array/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 60 ms, faster than 92.31% of Ruby online submissions for Search in
# Rotated Sorted Array.
# Memory Usage: 211.1 MB, less than 87.50% of Ruby online submissions for Search
# in Rotated Sorted Array.
# 2023.08.08 Daily Challenge.
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  # Copied from:
  # https://leetcode.com/problems/search-in-rotated-sorted-array/solution/
  n = nums.size
  l, r = 0, n-1
  while l <= r
    m = l + (r - l)/2
    if nums[m] == target
      return m
    elsif nums[m] >= nums[l]
      if target >= nums[l] && target < nums[m]
        r = m - 1
      else
        l = m +1
      end
    else
      if target <= nums[r] && target > nums[m]
        l = m + 1
      else
        r = m - 1
      end
    end
  end
  return -1
end
