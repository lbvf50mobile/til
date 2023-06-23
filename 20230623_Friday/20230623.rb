# Leetcode: 1027. Longest Arithmetic Subsequence.
# https://leetcode.com/problems/longest-arithmetic-subsequence/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1230 ms, faster than 100.00% of Ruby online submissions for Longest
# Arithmetic Subsequence.
# Memory Usage: 277.4 MB, less than 50.00% of Ruby online submissions for
# Longest Arithmetic Subsequence.
# 2023.06.23 Daily Challenge.
# @param {Integer[]} nums
# @return {Integer}
def longest_arith_seq_length(nums)
  # Hint got from the Leetcode's solutions.
  # https://leetcode.com/problems/longest-arithmetic-subsequence/solution/
  dp = Array.new(nums.size){ Array.new(1501,1)}
  max = 0
  (0...nums.size).each do |j|
    (0...j).each do |i|
      diff = 500 + (nums[j] - nums[i])
      dp[j][diff] = dp[i][diff] + 1
      max = dp[j][diff] if dp[j][diff] > max
    end
  end
  return max
end
