# Leetcode: 1887. Reduction Operations to Make the Array Elements Equal.
# https://leetcode.com/problems/reduction-operations-to-make-the-array-elements-equal
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 339 ms, faster than 100.00% of Ruby online submissions for
# Reduction Operations to Make the Array Elements Equal.
# Memory Usage: 229.2 MB, less than 100.00% of Ruby online submissions for
# Reduction Operations to Make the Array Elements Equal.
# 2023.11.19 Daily Challenge.
# @param {Integer[]} nums
# @return {Integer}
def reduction_operations(nums)
  ans = 0
  prev_max_amount = 0
  # 1. Create a Counter.
  counter = nums.tally
  # 2. Find Minimum in key.
  min = counter.keys.min
  # 3. Sort descending and Sum all non-minimum key's values.
  # Sum in a tricky way. Need to take in to account amount of previous values
  # that had been decreased to a current one.
  counter.to_a.sort_by(&:first).reverse.each do |i,v|
    if i != min
      prev_max_amount += v
      ans += prev_max_amount 
    end
  end
  return ans
end
