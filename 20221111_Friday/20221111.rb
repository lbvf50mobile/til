# Leetcode: 26. Remove Duplicates from Sorted Array.
# https://leetcode.com/problems/remove-duplicates-from-sorted-array/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 182 ms, faster than 45.75% of Ruby online submissions for Remove Duplicates from Sorted Array.
# Memory Usage: 211.8 MB, less than 42.82% of Ruby online submissions for Remove Duplicates from Sorted Array.
# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  w = 0
  (1...nums.size).each do |i|
    if nums[w] != nums[i]
      nums[w+1] = nums[i]
      w += 1
    end
  end
  return w + 1
end
