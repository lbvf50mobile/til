# Leetcode: 1470. Shuffle the Array.
# https://leetcode.com/problems/shuffle-the-array/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 85 ms, faster than 84.91% of Ruby online submissions for Shuffle the Array.
# Memory Usage: 211.7 MB, less than 7.55% of Ruby online submissions for Shuffle the Array.
# 2023.02.06 Daily Challenge.
# @param {Integer[]} nums
# @param {Integer} n
# @return {Integer[]}
def shuffle(nums, n)
  return nums if 1 == n
  ans = []
  n.times do |offset|
    2.times do |start|
      ans.push(nums[start*n + offset])
    end
  end
  return ans
end
