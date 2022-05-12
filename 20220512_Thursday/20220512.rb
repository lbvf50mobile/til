# Leetcode: 47. Permutations II.
# https://leetcode.com/problems/permutations-ii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 398 ms, faster than 33.82% of Ruby online submissions for Permutations II.
# Memory Usage: 224.7 MB, less than 17.65% of Ruby online submissions for Permutations II.
# @param {Integer[]} nums
# @return {Integer[][]}
def permute_unique(nums)
  nums.permutation.to_a.uniq
end
