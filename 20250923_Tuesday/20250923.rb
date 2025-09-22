# Leetcode: 3005. Count Elements With Maximum Frequency
# https://leetcode.com/problems/count-elements-with-maximum-frequency/description/?envType=daily-question&envId=2025-09-22
# - - -
# Accepted.
# Thanks God, Jesus Christ!

# @param {Integer[]} nums
# @return {Integer}
def max_frequency_elements(nums)
  f = nums.tally
  mx = f.values.max
  f.to_a.sum(0){|_, x| mx == x ? x : 0 }
end
