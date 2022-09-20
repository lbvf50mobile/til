# Leetcode: 718. Maximum Length of Repeated Subarray.
# https://leetcode.com/problems/maximum-length-of-repeated-subarray/
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
# TLE.
def find_length(nums1, nums2)
  @n1, @n2 = nums1, nums2
  @dp = Array.new(nums1.size).map{ Array.new(nums2.size)}
  @max = 0
  (0...nums1.size).each do |i|
    (0...nums2.size).each do |j|
      next if @dp[i][j]
      rec(i,j)
    end
  end
  @max
end

def rec(i,j)
  return 0 if ! (i.between?(0,@n1.size-1) && j.between?(0,@n2.size-1))
  return @dp[i][j] if @dp[i][j]
  if @n1[i] != @n2[j]
    @dp[i][j] = 0
  else
    @dp[i][j] = 1 + rec(i+1, j+1)
  end
  @max = @dp[i][j] if @dp[i][j] > @max
  return @dp[i][j]
end

