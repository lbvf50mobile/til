# Leetcode: 704. Binary Search.
# https://leetcode.com/problems/binary-search/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 175 ms, faster than 13.57% of Ruby online submissions for Binary Search.
# Memory Usage: 213.6 MB, less than 79.46% of Ruby online submissions for Binary Search.
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  l,h = 0, nums.size - 1
  while l <= h
    m = l + (h-l)/2
    return m if nums[m] == target
    if target < nums[m]
      h = m - 1
    else
      l = m + 1
    end
  end
  return -1
end
