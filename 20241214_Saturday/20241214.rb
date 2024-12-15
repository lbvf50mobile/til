# Leetcode: 2762. Continuous Subarrays
# https://leetcode.com/problems/continuous-subarrays/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1216 ms, faster than 100.00% of Ruby online submissions for
# Continuous Subarrays.
# Memory Usage: 218.6 MB, less than 100.00% of Ruby online submissions for
# Continuous Subarrays.
# 2024.12.14 Daily Challenge.
# @param {Integer[]} nums
# @return {Integer}
def continuous_subarrays(nums)
  # based on the Leetcode's solution.
  f = {}
  f.default = 0
  l, r = 0, 0
  c = 0
  while r < nums.size
    f[nums[r]] = f[nums[r]] + 1
    while (f.max)[0] - (f.min)[0] > 2 
      f[nums[l]] -= 1
      if 0 == f[nums[l]]
        f.delete(nums[l])
      end
      l += 1
    end
    c += r - l +1
    r +=1
  end
  return c
end