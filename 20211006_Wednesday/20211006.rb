# Leetcode: 442. Find All Duplicates in an Array.
# https://leetcode.com/problems/find-all-duplicates-in-an-array/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 116 ms, faster than 94.44% of Ruby online submissions for Find All Duplicates in an Array.
# Memory Usage: 223.1 MB, less than 5.56% of Ruby online submissions for Find All Duplicates in an Array.
# @param {Integer[]} nums
# @return {Integer[]}
def find_duplicates(nums)
  require "set"
  ans = []
  dup = Set.new
  nums.each do |n|
    if dup.include?(n)
      ans.push(n)
    else
      dup.add(n)
    end
  end
  ans
end
