# Leetcode: 334. Increasing Triplet Subsequence. 
# https://leetcode.com/problems/increasing-triplet-subsequence/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 270 ms, faster than 28.57% of Ruby online submissions for Increasing Triplet Subsequence.
# Memory Usage: 216.3 MB, less than 85.71% of Ruby online submissions for Increasing Triplet Subsequence.
# 2022.10.11 Daily Challenge.
# @param {Integer[]} nums
# @return {Boolean}
def increasing_triplet(nums)
  # Based on:
  # https://leetcode.com/problems/increasing-triplet-subsequence/discuss/78995/Python-Easy-O(n)-Solution
  first, second = Float::INFINITY, Float::INFINITY
  nums.each do |n|
    if n <= first
      first = n
    elsif n <= second
      second = n
    else
      return true
    end
  end
  return false
end

