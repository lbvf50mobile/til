# Leetcode: 462. Minimum Moves to Equal Array Elements II.
# https://leetcode.com/problems/minimum-moves-to-equal-array-elements-ii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 116 ms, faster than 100.00% of Ruby online submissions for Minimum Moves to Equal Array Elements II.
# Memory Usage: 211.8 MB, less than 100.00% of Ruby online submissions for Minimum Moves to Equal Array Elements II.
# @param {Integer[]} nums
# @return {Integer}
def min_moves2(nums)
  # Based on:
  # https://leetcode.com/problems/minimum-moves-to-equal-array-elements-ii/discuss/2216211/Median-better-than-average!-Developing-intution
  nums = nums.sort
  pivot, ans = 0,0
  if nums.size.even?
    pivot = (nums[nums.size/2-1] + nums[nums.size/2])/2
  else
    pivot = nums[nums.size/2]
  end
  nums.reduce(0){|sum,val| sum + (pivot-val).abs}
end
