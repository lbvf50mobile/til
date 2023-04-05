# Leetcode: 2439. Minimize Maximum of Array.
# https://leetcode.com/problems/minimize-maximum-of-array/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 271 ms, faster than 100.00% of Ruby online submissions for Minimize
# Maximum of Array.
# Memory Usage: 220 MB, less than 100.00% of Ruby online submissions for
# Minimize Maximum of Array.
# 2023.04.05 Daily Challenge.
# @param {Integer[]} nums
# @return {Integer}
def minimize_array_value(nums)
  # Based on:
  # https://leetcode.com/problems/minimize-maximum-of-array/solution/
  # Initialize answer and the prefix sum.
  ans, ps = 0, 0
  (0...nums.size).each do |i|
    ps += nums[i]
    ans = [ans, ps.fdiv(i+1).ceil].max
  end
  return ans
end
