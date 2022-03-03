# Leetcode: 413. Arithmetic Slices.
# https://leetcode.com/problems/arithmetic-slices/
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
    @dp[i] = 1 + rec(i+1) + rec(i+2)
    return @dp[i]
  end
  @dp[i] = 0
  return @dp[i]
end


