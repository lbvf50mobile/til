# Leetcode: 1793. Maximum Score of a Good Subarray.
# https://leetcode.com/problems/maximum-score-of-a-good-subarray/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = = 
# Runtime: 224 ms, faster than 100.00% of Ruby online submissions for Maximum
# Score of a Good Subarray.
# Memory Usage: 222.9 MB, less than 100.00% of Ruby online submissions for
# Maximum Score of a Good Subarray.
# 2023.10.22 Daily Challenge.
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def maximum_score(nums, k)
  # Based on:
  # https://leetcode.com/problems/maximum-score-of-a-good-subarray/solution/
  n = nums.size
  left = k
  right = k
  ans = nums[k]
  curr_min = nums[k]
  while left > 0 || right < n - 1
    tmp1 = (0 != left) ? nums[left-1] : 0 
    tmp2 = (right < n - 1) ? nums[right+1] : 0
    if tmp1 < tmp2
      right += 1
      curr_min = [curr_min, nums[right]].min
    else
      left -= 1
      curr_min = [curr_min, nums[left]].min
    end
    ans = [ans, curr_min * (right - left + 1)].max
  end
  return ans
end
