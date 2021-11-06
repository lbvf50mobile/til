# Leetcode: 260. Single Number III.
# https://leetcode.com/problems/single-number-iii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 105 ms, faster than 11.11% of Ruby online submissions for Single Number III.
# Memory Usage: 211.5 MB, less than 22.22% of Ruby online submissions for Single Number III.
# @param {Integer[]} nums
# @return {Integer[]}
def single_number(nums)
  # Based on:
  # https://leetcode.com/problems/single-number-iii/discuss/68907/Naive-Python
  require "set"
  a = Set.new
  b = Set.new
  nums.each do |el|
    if ! a.include?(el)
      a.add(el)
    else
      b.add(el)
    end
  end
  (a-b).to_a
end
