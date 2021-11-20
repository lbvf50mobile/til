# Leetcode: 540. Single Element in a Sorted Array.
# https://leetcode.com/problems/single-element-in-a-sorted-array/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 85 ms, faster than 10.00% of Ruby online submissions for Single Element in a Sorted Array.
# Memory Usage: 210.1 MB, less than 90.00% of Ruby online submissions for Single Element in a Sorted Array.
# @param {Integer[]} nums
# @return {Integer}
def single_non_duplicate(nums)
  # Based on:
  # https://leetcode.com/problems/single-element-in-a-sorted-array/discuss/959109/Python-beats-100
  @n = nums
  return nums[0] if 1 == nums.size
  return nums[0] if nums[0] != nums[1]
  return nums[nums.size-1] if nums[nums.size - 1] != nums[nums.size - 2]
  l,r = 0, nums.size-1
  while l+1 < r # Why strictly?
    mid = (l + r)/2
    if mid.even?
      if @n[mid] == @n[mid+1]
        l = mid # move right.
      else
        r = mid # more left.
      end
    else
      if @n[mid] == @n[mid-1]
        l = mid # move rigth.
      else
        r = mid # move left.
      end
    end
  end
  return @n[l] if l.even?
  @n[r]
end


