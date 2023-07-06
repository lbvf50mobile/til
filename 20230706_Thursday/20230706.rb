# Leetcode: 209. Minimum Size Subarray Sum.
# https://leetcode.com/problems/minimum-size-subarray-sum/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 142 ms, faster than 9.09% of Ruby online submissions for Minimum Size
# Subarray Sum.
# Memory Usage: 213.9 MB, less than 90.91% of Ruby online submissions for
# Minimum Size Subarray Sum.
# 2023.07.06 Daily Challenge.
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
    while (sum >= target || nums.size - 1 == i) && j <= i
      sum -= nums[j]
      j += 1
      l = i - j + 1
      ans = l if sum >= target && l < ans
    end
  end
  return 0 if ans == nums.size + 1 
  return ans
end
