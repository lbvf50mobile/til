# Leetcode: 2090. K Radius Subarray Averages.
# https://leetcode.com/problems/k-radius-subarray-averages/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def get_averages(nums, k)
  answer = Array.new(nums.size, -1)
  sum = nums[0...2*k+1].sum
  (k...
    
end
