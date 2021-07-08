# Leetcode: 718. Maximum Length of Repeated Subarray.
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/609/week-2-july-8th-july-14th/3807/
# Accepted.
# Thanks God!
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def find_length(nums1, nums2)
  @dp = Array.new(nums1.size+1).map{ Array.new(nums2.size+1,0)}    
  @s1,@s2 = nums1.size, nums2.size
  @n1,@n2 = nums1, nums2
  (1..@s1).each do |i|
    (1..@s2).each do |j|
        @dp[i][j] = @dp[i-1][j-1] + 1 if @n1[i-1] == @n2[j-1]     
    end
  end
  @dp.map(&:max).max # Select maximum prefix. Prefix counted by a last prefix element.
end

