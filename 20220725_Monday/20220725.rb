# Leetcode: 34. Find First and Last Position of Element in Sorted Array.
# https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
  # Based on:
  # Errichto: "Binary Search tutorial (C++ and Python)"
  # https://youtu.be/GU7DpgHINWQ
  # Find left position.
  l,r = 0, nums.size - 1
  ans_l = -1
  not_find = [-1,-1]
  while l <= r
    mid = l + (r-l)/2
    if target <= nums[mid]
      ans_l = mid
      r = mid - 1
    else
      l = mid + 1
    end
  end
  return not_find if -1 == ans_l
  return not_find if target != nums[ans_l]
  l,r = 0, nums.size - 1
  ans_r = -1
  while l <= r
    mid = l + (r-l)/2
    if target >= nums[mid]
      ans_r = mid
      l = mid + 1
    else
      r = mid - 1
    end
  end
  return [ans_l, ans_r]
end
