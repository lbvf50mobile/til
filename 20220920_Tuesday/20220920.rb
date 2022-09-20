# Leetcode: 718. Maximum Length of Repeated Subarray.
# https://leetcode.com/problems/maximum-length-of-repeated-subarray/
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
# TLE.
def find_length(nums1, nums2)
  @n1, @n2 = nums1, nums2
  @dp = Array.new(nums1.size+1).map{ Array.new(nums2.size+1,0)}
  max = 0
  (0...@n1.size).reverse_each do |i|
    (0...@n2.size).reverse_each do |j|
      if nums1[i] == nums2[j]
        @dp[i][j] = (@dp[i+1][j+1] + 1)
        max = @dp[i][j] if max < @dp[i][j]
      end
    end
  end
  max
end

