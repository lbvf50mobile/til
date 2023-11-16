# Leetcode: 1980. Find Unique Binary String.
# https://leetcode.com/problems/find-unique-binary-string
# @param {String[]} nums
# @return {String}
require "set"
def find_different_binary_string(nums)
  ints = Set.new
  num.each do |x|
    ints.add(x.to_i(2))
  end
  n = nums.size
  n.times do |num|
    if ! ints.include?(num)
      ans = num.to_s(2)[2..-1]
      return "0" * (n - ans.size) + ans
    end
  end
  
    
end
