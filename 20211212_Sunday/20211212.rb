# Leetcode: 416. Partition Equal Subset Sum.
# https://leetcode.com/problems/partition-equal-subset-sum/
# @param {Integer[]} nums
# @return {Boolean}
# Wrong algorithm.
def can_partition(nums)
  nums = nums.sort
  # right_part_prefix_sum (suffix sum)
  suffix_sum = nums.clone
  (0...(nums.size-1)).reverse_each do |i|
    suffix_sum[i] += suffix_sum[i+1]
  end
  prefix_sum = 0
  (0...(nums.size-1)).each do |i|
    prefix_sum += nums[i]
    return true if prefix_sum == suffix_sum[i+1]
  end
  return false
end
