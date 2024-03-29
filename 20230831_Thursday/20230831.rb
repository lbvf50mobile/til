# Leetcode: 1326. Minimum Number of Taps to Open to Water a Garden.
# https://leetcode.com/problems/minimum-number-of-taps-to-open-to-water-a-garden/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 281 ms, faster than 100.00% of Ruby online submissions for Minimum
# Number of Taps to Open to Water a Garden.
# Memory Usage: 211.6 MB, less than 100.00% of Ruby online submissions for
# Minimum Number of Taps to Open to Water a Garden.
# 2023.08.31 Daily Challenge.
# @param {Integer} n
# @param {Integer[]} ranges
# @return {Integer}
def min_taps(n, ranges)
  # Based on:
  # https://leetcode.com/problems/minimum-number-of-taps-to-open-to-water-a-garden/solution/
  inf = 10**9
  dp = Array.new(n+1,inf)
  dp[0] = 0
  (n+1).times do |i|
    tap_start = [0, i - ranges[i]].max
    tap_end = [n, i + ranges[i]].min
    (tap_start..tap_end).each do |j|
      dp[tap_end] = [dp[tap_end], dp[j] + 1].min
    end
  end
  return -1 if inf == dp[n]
  return dp[n]
end
