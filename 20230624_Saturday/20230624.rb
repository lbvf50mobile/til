# Leetcode: 956. Tallest Billboard.
# https://leetcode.com/problems/tallest-billboard/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 333 ms, faster than 50.00% of Ruby online submissions for Tallest
# Billboard.
# Memory Usage: 243.7 MB, less than 100.00% of Ruby online submissions for
# Tallest Billboard.
# 2023.06.24 Daily Challenge.
# @param {Integer[]} rods
# @return {Integer}
def tallest_billboard(rods)
  # Based on:
  # https://leetcode.com/problems/tallest-billboard/solution/
  dp = {}
  dp.default = 0
  dp[0] = 0
  rods.each do |r|
    ndp = dp.clone
    ndp.default = 0
    dp.each do |diff, taller|
      shorter = taller - diff
      ndp[diff+r] = [ndp[diff+r],taller+r].max
      ndiff = (shorter + r - taller).abs
      ntaller = [shorter + r, taller].max
      ndp[ndiff] = [ndp[ndiff],ntaller].max
    end
    dp = ndp
  end
  dp[0]
end
