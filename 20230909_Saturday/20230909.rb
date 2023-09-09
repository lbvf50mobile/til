# Leetcode: 377. Combination Sum IV.
# https://leetcode.com/problems/combination-sum-iv
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 68 ms, faster than 85.71% of Ruby online submissions for Combination
# Sum IV.
# Memory Usage: 211.1 MB, less than 42.86% of Ruby online submissions for
# Combination Sum IV.
# 2023.09.09 Daily Challenge.
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def combination_sum4(nums, target)
  # Based on:
  # https://leetcode.com/problems/combination-sum-iv/discuss/85041/7-liner-in-Python-and-follow-up-question
  nums, combs = nums.sort, [1] + [0]*target
  (0..target).each do |i|
    nums.each do |num|
      break if num > i
      if num == i
        combs[i] += 1
      end
      if num < i
        combs[i] += combs[i-num]
      end
    end
  end
  return combs[target]
end

