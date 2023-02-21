# Leetcode: 540. Single Element in a Sorted Array.
# https://leetcode.com/problems/single-element-in-a-sorted-array/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 140 ms, faster than 20.00% of Ruby online submissions for Single Element in a Sorted Array.
# Memory Usage: 213.3 MB, less than 40.00% of Ruby online submissions for Single Element in a Sorted Array.
# 2023.02.21 Daily Challenge.
# @param {Integer[]} nums
# @return {Integer}
def single_non_duplicate(nums)
  # Based on:
  # https://leetcode.com/problems/single-element-in-a-sorted-array/discuss/3212178/Day-52-oror-Binary-Search-oror-Easiest-Beginner-Friendly-Sol
  l,r = 0, nums.size - 1
  while l < r
    m = l + (r-l)/2
    m -= 1 if m.odd?
    if nums[m] != nums[m+1]
      r = m
    else
      l = m + 2
    end
  end
  nums[l]
end
