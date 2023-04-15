# Leetcode: 2218. Maximum Value of K Coins From Piles.
# https://leetcode.com/problems/maximum-value-of-k-coins-from-piles/
# @param {Integer[][]} piles
# @param {Integer} k
# @return {Integer}
# 2023.04.15 Daily Challenge.
# TLE.
def max_value_of_coins(piles, k)
  # Based on:
  # https://leetcode.com/problems/maximum-value-of-k-coins-from-piles/solution/
  n = piles.size
  dp = Array.new(n+1).map{Array.new(k+1,0)}
  (1..n).each do |i|
    (0..k).each do |coins|
      sum = 0
      (0..[piles[i-1].size,coins].min).each do |cc| # Current coins.
        sum += piles[i-1][cc-1] if cc > 0
        dp[i][coins] = [dp[i][coins],dp[i-1][coins-cc]+sum].max
      end
    end
  end
  return dp[n][k]
end
