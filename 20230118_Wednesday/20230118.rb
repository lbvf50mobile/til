# Leetcode: 918. Maximum Sum Circular Subarray.
# https://leetcode.com/problems/maximum-sum-circular-subarray/
# @param {Integer[]} nums
# @return {Integer}
def max_subarray_sum_circular(nums)
  # Based on:
  # https://leetcode.com/problems/maximum-sum-circular-subarray/solution/
  total = nums[0] 
  sum1 = nums[0]
  sum2 = nums[0]
  min_sum = nums[0]
  max_sum = nums[0]
  (1...nums.size).each do |i|
    x = nums[i]
    total += x
    sum1 = [x,sum1].min
    sum2 = [x,sum2].max
    min_sum = sum1 if sum1 < min_sum
    max_sum = sum2 if sum2 > max_sum
  end
  return total == min_sum ? max_sum : [max_sum,total-min_sum].max
end
