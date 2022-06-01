# Leetcode: 1480. Running Sum of 1d Array.
# https://leetcode.com/problems/running-sum-of-1d-array/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 109 ms, faster than 54.55% of Ruby online submissions for Running Sum of 1d Array.
# Memory Usage: 211 MB, less than 72.73% of Ruby online submissions for Running Sum of 1d Array.
# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
  ans = Array.new(nums.size)
  ans[0] = nums[0]
  (1...nums.size).each do |i|
    ans[i] = ans[i-1] + nums[i]
  end
  ans
end
