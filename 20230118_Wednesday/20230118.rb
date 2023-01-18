# Leetcode: 918. Maximum Sum Circular Subarray.
# https://leetcode.com/problems/maximum-sum-circular-subarray/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 141 ms, faster than 100.00% of Ruby online submissions for Maximum Sum Circular Subarray.
# Memory Usage: 215.4 MB, less than 75.00% of Ruby online submissions for Maximum Sum Circular Subarray.
# 2023.01.18 Daily Challenge.
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
    sum1 = [x,sum1+x].min
    sum2 = [x,sum2+x].max
    min_sum = sum1 if sum1 < min_sum
    max_sum = sum2 if sum2 > max_sum
  end
  return total == min_sum ? max_sum : [max_sum,total-min_sum].max
end
