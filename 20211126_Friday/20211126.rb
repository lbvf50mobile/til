# Leetcode: 35. Search Insert Position.
# https://leetcode.com/problems/search-insert-position/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 80 ms, faster than 26.34% of Ruby online submissions for Search Insert Position.
# Memory Usage: 210 MB, less than 27.88% of Ruby online submissions for Search Insert Position.
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  return 0 if target < nums.first
  return nums.size if target > nums.last
  l,r = 0, nums.size - 1
  while l <= r
    mid = l + (r-l)/2
    return mid if nums[mid] == target
    if nums[mid] < target
      l = mid + 1
    else
      r = mid - 1
    end
  end
  l
end
