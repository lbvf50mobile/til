# Leetcode: 189. Rotate Array.
# https://leetcode.com/problems/rotate-array/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 202 ms, faster than 36.40% of Ruby online submissions for Rotate Array.
# Memory Usage: 219.6 MB, less than 5.44% of Ruby online submissions for Rotate Array.
# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
  clone = nums.clone
  (0...nums.size).each do |i|
    nums[(i+k)%nums.size] = clone[i]
  end
end
