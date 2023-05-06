# Leetcode: 1498. Number of Subsequences That Satisfy the Given Sum Condition.
# https://leetcode.com/problems/number-of-subsequences-that-satisfy-the-given-sum-condition/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 2364 ms, faster than 11.11% of Ruby online submissions for Number of
# Subsequences That Satisfy the Given Sum Condition.
# Memory Usage: 234.9 MB, less than 50.00% of Ruby online submissions for Number
# of Subsequences That Satisfy the Given Sum Condition.
# 2023.05.06 Daily Challenge.
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def num_subseq(nums, target)
  # Based on the Leetcode's solution.
  n, mod = nums.size, 10**9 + 7
  nums.sort!
  answer = 0
  l, r = 0, n-1
  while l <= r
    if nums[l] + nums[r] <= target
      answer = (answer + 2**(r-l)) % mod
      l += 1
    else
      r -= 1
    end
  end
  return answer
end
