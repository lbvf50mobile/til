# Leetcode: 1458. Max Dot Product of Two Subsequences.
# https://leetcode.com/problems/max-dot-product-of-two-subsequences/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 169 ms, faster than 100.00% of Ruby online submissions for Max Dot
# Product of Two Subsequences.
# Memory Usage: 225.3 MB, less than 100.00% of Ruby online submissions for Max
# Dot Product of Two Subsequences.
# 2023.10.08 Daily Challenge.
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def max_dot_product(nums1, nums2)
  # Based on:
  # https://leetcode.com/problems/max-dot-product-of-two-subsequences/solution/
  min1, max1 = nums1.minmax
  min2, max2 = nums2.minmax
  return max1 * min2 if max1 < 0 && min2 > 0
  return min1 * max2 if min1 > 0 && max2 < 0
  dp = Array.new(nums1.size+1){ Array.new(nums2.size+1,0)}
  (0...nums1.size).reverse_each do |i|
    (0...nums2.size).reverse_each do |j|
      tmp = nums1[i] * nums2[j] + dp[i+1][j+1]
      dp[i][j] = [tmp, dp[i+1][j], dp[i][j+1]].max
    end
  end
  return dp[0][0]
end
