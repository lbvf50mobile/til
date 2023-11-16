# Leetcode: 1980. Find Unique Binary String.
# https://leetcode.com/problems/find-unique-binary-string
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 51 ms, faster than 100.00% of Ruby online submissions for Find
# Unique Binary String.
# Memory Usage: 211.1 MB, less than 100.00% of Ruby online submissions for
# Find Unique Binary String.
# 2023.11.16 Daily Challenge.
# @param {String[]} nums
# @return {String}
require "set"
def find_different_binary_string(nums)
  # Based on:
  # https://leetcode.com/problems/find-unique-binary-string/solution/
  ints = Set.new
  nums.each do |x|
    ints.add(x.to_i(2))
  end
  n = nums.size
  (n+1).times do |num|
    if ! ints.include?(num)
      return num.to_s(2).rjust(n,?0)
    end
  end
  raise "This could not be reached."
end
