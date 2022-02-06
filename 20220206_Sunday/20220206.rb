# Leetcode: 80. Remove Duplicates from Sorted Array II.
# https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 72 ms, faster than 66.67% of Ruby online submissions for Remove Duplicates from Sorted Array II.
# Memory Usage: 211.3 MB, less than 33.33% of Ruby online submissions for Remove Duplicates from Sorted Array II.
# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return nums.size if nums.size < 3
  # wp stance for Write Pointer.
  # rb stance for Read Pointer.
  wp = 1
  (2...nums.size).each do |rp|
    if !(nums[wp-1] == nums[wp] && nums[wp] == nums[rp])
      nums[wp+1] = nums[rp]
      wp += 1
    end
  end
  wp + 1
end
