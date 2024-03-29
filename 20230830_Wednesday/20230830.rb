# Leetcode: 2366. Minimum Replacements to Sort the Array.
# https://leetcode.com/problems/minimum-replacements-to-sort-the-array/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 125 ms, faster than 100.00% of Ruby online submissions for Minimum
# Replacements to Sort the Array.
# Memory Usage: 218.7 MB, less than 100.00% of Ruby online submissions for
# Minimum Replacements to Sort the Array.
# 2023.08.30 Daily Challenge.
# @param {Integer[]} nums
# @return {Integer}
def minimum_replacement(nums)
  # Based on:
  # Leetcode's soltuion.
  answer = 0
  n = nums.size
  i = n - 2
  while i >= 0
    if nums[i] > nums[i+1]
      num_elements = (nums[i] + nums[i+1] - 1)/nums[i+1]
      answer += num_elements - 1
      nums[i] = nums[i]/num_elements
    end
    i -= 1
  end
  return answer
end
