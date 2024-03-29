# Leetcode: 2256. Minimum Average Difference.
# https://leetcode.com/problems/minimum-average-difference/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1118 ms, faster than 25.00% of Ruby online submissions for Minimum Average Difference.
# Memory Usage: 233.7 MB, less than 25.00% of Ruby online submissions for Minimum Average Difference.
# 2022.12.04 Daily Challenge.
# @param {Integer[]} nums
# @return {Integer}
def minimum_average_difference(nums)
  # Based on:
  # https://leetcode.com/problems/minimum-average-difference/solution/
  n = nums.size
  ans = -1
  min_avg_diff = Float::INFINITY
  prefix_sum = Array.new(n+1, 0)
  suffix_sum = Array.new(n+1, 0)
  (0...n).each do |i|
    prefix_sum[i+1] = prefix_sum[i] + nums[i]
  end
  (0...n).reverse_each do |i|
    suffix_sum[i] = suffix_sum[i+1] + nums[i]
  end
  (0...n).each do |i|
    left_part_average = prefix_sum[i+1]/(i+1)
    right_part_average = suffix_sum[i+1]
    right_part_average /= (n-i-1) if n-1 != i
    curr_differece = (left_part_average - right_part_average).abs
    if curr_differece < min_avg_diff
      min_avg_diff = curr_differece
      ans = i
    end
  end
  ans
end
