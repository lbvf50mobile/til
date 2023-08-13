# Leetcode: 2369. Check if There is a Valid Partition For The Array.
# https://leetcode.com/problems/check-if-there-is-a-valid-partition-for-the-array/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 249 ms, faster than 100.00% of Ruby online submissions for Check if
# There is a Valid Partition For The Array.
# Memory Usage: 228.6 MB, less than 100.00% of Ruby online submissions for Check
# if There is a Valid Partition For The Array.
# 2023.08.13 Daily Challenge.
# @param {Integer[]} nums
# @return {Boolean}
def valid_partition(nums)
  # Based on:
  # https://leetcode.com/problems/check-if-there-is-a-valid-partition-for-the-array/solution/
  n = nums.size
  dp = Array.new(n+1,false)
  dp[0] = true
  n.times do |i|
    dpi = i + 1
    if i > 0 && nums[i] == nums[i-1]
      dp[dpi] ||= dp[dpi-2]
    end
    if i > 1 && nums[i] == nums[i-1] && nums[i-1] == nums[i-2]
      dp[dpi] ||= dp[dpi-3]
    end
    if i > 1 && nums[i] == nums[i-1] + 1 && nums[i-1] + 1 == nums[i-2]+2
      dp[dpi] ||=dp[dpi-3]
    end
  end
  return dp[n]
end
