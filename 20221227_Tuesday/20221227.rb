# Leetcode: 2279. Maximum Bags With Full Capacity of Rocks.
# https://leetcode.com/problems/maximum-bags-with-full-capacity-of-rocks/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 278 ms, faster than 100.00% of Ruby online submissions for Maximum Bags With Full Capacity of Rocks.
# Memory Usage: 224.6 MB, less than 100.00% of Ruby online submissions for Maximum Bags With Full Capacity of Rocks.
# 2022.12.27 Daily Challenge.
# @param {Integer[]} capacity
# @param {Integer[]} rocks
# @param {Integer} additional_rocks
# @return {Integer}
def maximum_bags(capacity, rocks, additional_rocks)
  delta = capacity.zip(rocks).map{|a,b| a-b}.sort
  counter = 0
  delta.each do |value|
    if value <= additional_rocks
      additional_rocks -= value
      value = 0
    end
    counter += 1 if 0 == value
  end
  return counter
end
