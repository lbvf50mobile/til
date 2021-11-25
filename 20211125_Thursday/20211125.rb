# Leetcode: 53. Maximum Subarray.
# https://leetcode.com/problems/maximum-subarray/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 124 ms, faster than 74.93% of Ruby online submissions for Maximum Subarray.
# Memory Usage: 217.7 MB, less than 87.33% of Ruby online submissions for Maximum Subarray.
# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  sum = nums[0]
  max = sum
  (1...nums.size).each do |i|
    sum = (nums[i]+sum) > nums[i] ? nums[i] + sum : nums[i]
    max = sum if sum > max
  end
  max
end
