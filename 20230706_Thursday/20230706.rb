# Leetcode: 209. Minimum Size Subarray Sum.
# https://leetcode.com/problems/minimum-size-subarray-sum/
# @param {Integer} target
# @param {Integer[]} nums
# @return {Integer}
def min_sub_array_len(target, nums)
  ans = nums.size + 1 
  j = 0
  sum = 0
  (0...nums.size).each do |i|
    x = nums[i]
    l = i - j + 1
    sum += x
    if sum >= target && l < ans
      ans = l
    end
    while sum >= target && j <= i
      sum -= nums[j]
      l = i -j + 1
      ans = l if sum >= target && l < ans
    end
  end
  return 0 if ans == nums.size + 1 
  return ans
end
