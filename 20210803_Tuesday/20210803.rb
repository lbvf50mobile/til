# Leetcode: 90. Subsets II.
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/613/week-1-august-1st-august-7th/3837/
# Accepted.
# Thanks God!
# @param {Integer[]} nums
# @return {Integer[][]}
def subsets_with_dup(nums)
  require 'set'
  nums.sort!
  ans = Set.new
  (0..nums.size).each do |size|
    nums.combination(size).each{|comb| ans.add(comb)}
  end
  return ans.to_a
end
