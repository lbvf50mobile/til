# Leetcode: 16. 3Sum Closest.
# https://leetcode.com/problems/3sum-closest/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1794 ms, faster than 71.74% of Ruby online submissions for 3Sum Closest.
# Memory Usage: 212.3 MB, less than 84.78% of Ruby online submissions for 3Sum Closest.
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  nums.sort! # Forgot to sort. Fixed.
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
