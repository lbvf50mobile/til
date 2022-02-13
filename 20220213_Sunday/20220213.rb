# Leetcode: 78. Subsets.
# https://leetcode.com/problems/subsets/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 116 ms, faster than 28.81% of Ruby online submissions for Subsets.
# Memory Usage: 211 MB, less than 30.51% of Ruby online submissions for Subsets.
# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  ans = []
  (0..nums.size).each do |size|
    ans += nums.combination(size).to_a
  end
  ans
end
