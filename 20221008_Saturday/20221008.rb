# Leetcode: 16. 3Sum Closest.
# https://leetcode.com/problems/3sum-closest/
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
# FAIL
def three_sum_closest(nums, target)
  ans = nums[0] + nums[1] + nums[2]
  ans_abs = (target - ans).abs
  (0...(nums.size-2)).each do |i|
    j,k = i+1, nums.size - 1
    while j < k
      sum = nums[i] + nums[j] + nums[k]
      abs = (target - sum).abs
      return sum if sum == target
      if abs < ans_abs
        ans_abs = abs
        ans = sum
      end
      if sum < target
        j += 1
      else
        k -= 1
      end
    end
  end
  return ans
end
