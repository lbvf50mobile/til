# Leetcode: 75. Sort Colors.
# https://leetcode.com/problems/sort-colors/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 64 ms, faster than 49.28% of Ruby online submissions for Sort Colors.
# Memory Usage: 209.8 MB, less than 82.61% of Ruby online submissions for Sort Colors.
# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
  arr = Array.new(3,0)
  nums.each{|x| arr[x]+=1}
  (0...arr[0]).each{|i| nums[i] = 0 }
  (arr[0]...arr[0]+arr[1]).each{|i| nums[i] = 1}
  (arr[0]+arr[1]...nums.size).each{|i| nums[i] = 2}
end

