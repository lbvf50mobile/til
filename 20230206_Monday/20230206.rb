# Leetcode: 1470. Shuffle the Array.
# https://leetcode.com/problems/shuffle-the-array/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 95 ms, faster than 52.83% of Ruby online submissions for Shuffle the Array.
# Memory Usage: 211.4 MB, less than 45.28% of Ruby online submissions for Shuffle the Array.
# 2023.02.06 Daily Challenge.
# @param {Integer[]} nums
# @param {Integer} n
# @return {Integer[]}
def shuffle(nums, n)
  return nums if 1 == n
  ans = []
  (nums.size/2).times do |i|
    ans.push(nums[i])
    ans.push(nums[i+n])
  end
  return ans
end
