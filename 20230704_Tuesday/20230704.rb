# Leetcode: 137. Single Number II.
# https://leetcode.com/problems/single-number-ii/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 87 ms, faster than 50.00% of Ruby online submissions for Single
# Number II.
# Memory Usage: 211.4 MB, less than 50.00% of Ruby online submissions for Single
# Number II.
# 2023.07.04 Daily Challenge.
# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  nums.tally.each do |k,v|
    return k if 1 == v
  end
  raise "Cannot find an answer."
end
