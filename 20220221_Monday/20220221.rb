# Leetcode: 169. Majority Element.
# https://leetcode.com/problems/majority-element/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 134 ms, faster than 38.16% of Ruby online submissions for Majority Element.
# Memory Usage: 212.6 MB, less than 12.50% of Ruby online submissions for Majority Element.
# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  nums.each_with_object(Hash.new){|el,o| o[el] ||= 0; o[el] += 1}
    .to_a.sort_by(&:last).last.first
end
