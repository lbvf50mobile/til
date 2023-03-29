# Leetcode: 1402. Reducing Dishes.
# https://leetcode.com/problems/reducing-dishes/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 89 ms, faster than 100.00% of Ruby online submissions for Reducing
# Dishes.
# Memory Usage: 211.2 MB, less than 33.33% of Ruby online submissions for
# Reducing Dishes.
# 2023.03.29 Daily Challenge.
# @param {Integer[]} satisfaction
# @return {Integer}
def max_satisfaction(satisfaction)
  s = satisfaction.sort_by{|x| -x }
  dp = s.clone
  max,prev,cur = 0, 0, 0
  ps = s.clone # Prefix sum.
  (1...ps.size).each do |i|
    ps[i] += ps[i-1]
  end
  cur = s[0]
  return 0 if cur <= 0
  prev = cur
  max = prev
  (1...s.size).each do |i|
    cur = ps[i] + dp[i-1]
    break if cur < prev
    dp[i] = cur
    prev = cur
    max = cur if cur > max
  end
  return max
end
