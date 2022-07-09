# Leetcode: 1696. Jump Game VI.
# https://leetcode.com/problems/jump-game-vi/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
# TLE.
def max_result(nums, k)
  # Let's use pull dp.
  dp = nums.clone
  (0...dp.size).each do |i|
    right = i-1
    left = (i-k) >= 0 ? i-k : 0
    next if right < 0
    max = nil
    (left..right).each do |j|
      max = dp[j] if max.nil?
      max = dp[j] if dp[j] > max
    end
    dp[i] += max
  end
  dp[-1]
end
