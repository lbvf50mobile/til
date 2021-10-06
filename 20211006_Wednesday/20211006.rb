# Leetcode: 442. Find All Duplicates in an Array.
# https://leetcode.com/problems/find-all-duplicates-in-an-array/
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
