# Leetcode: 413. Arithmetic Slices.
# https://leetcode.com/problems/arithmetic-slices/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 128 ms, faster than 40.00% of Ruby online submissions for Arithmetic Slices.
# Memory Usage: 211 MB, less than 53.33% of Ruby online submissions for Arithmetic Slices.
# @param {Integer[]} nums
# @return {Integer}
def number_of_arithmetic_slices(nums)
  @n = nums
  @dp = Array.new(nums.size)
  (0...@n.size).reverse_each do |i|
    rec(i)
  end
  @dp.sum
end

def rec(i)
  return @dp[i] if @dp[i]
  if i < @n.size - 2 && @n[i] - @n[i+1] == @n[i+1] - @n[i+2]
    @dp[i] = 1 + rec(i+1)
    return @dp[i]
  end
  @dp[i] = 0
  return @dp[i]
end
