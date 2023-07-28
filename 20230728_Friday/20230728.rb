# Leetcode:486. Predict the Winner.
# https://leetcode.com/problems/predict-the-winner/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 71 ms, faster than 100.00% of Ruby online submissions for Predict the
# Winner.
# Memory Usage: 211.1 MB, less than 16.67% of Ruby online submissions for
# Predict the Winner.
# 2023.07.28 Daily Challenge.
# @param {Integer[]} nums
# @return {Boolean}
def predict_the_winner(nums)
  # Based on the Leetcode's solution.
  n = nums.size
  dp = Array.new(n){ Array.new(n,0)}
  n.times do |i|
    dp[i][i] = nums[i]
  end
  (1...n).each do |d|
    (0...n-d).each do |l|
      r = l + d
      dp[l][r] = [nums[l] - dp[l+1][r], nums[r] - dp[l][r-1]].max
    end
  end
  return dp[0][n-1] >= 0
end
