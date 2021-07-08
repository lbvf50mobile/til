# Leetcode: 718. Maximum Length of Repeated Subarray.
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/609/week-2-july-8th-july-14th/3807/
# TLE.
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def find_length(nums1, nums2)
  @dp = Array.new(nums1.size).map{ Array.new(nums2.size)}    
  @s1,@s2 = nums1.size, nums2.size
  @n1,@n2 = nums1, nums2
  (0...@s1).each do |i|
    (0...@s2).each do |j|
      if(@n1[i] != @n2[j])
        @dp[i][j] = 0
      else
        @dp[i][j] = 1
        @dp[i][j] += @dp[i-1][j-1] if i - 1 >= 0 && j - 1 >= 0
      end
    end
  end
  @dp.map(&:max).max # Select maximum prefix. Prefix counted by a last prefix element.
end

