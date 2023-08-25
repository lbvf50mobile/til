# Leetcode: 97. Interleaving String.
# https://leetcode.com/problems/interleaving-string/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 84 ms, faster than 83.33% of Ruby online submissions for Interleaving
# String.
# Memory Usage: 211.3 MB, less than 58.33% of Ruby online submissions for
# Interleaving String.
# 2023.08.25 Daily Challenge.
# @param {String} s1
# @param {String} s2
# @param {String} s3
# @return {Boolean}
def is_interleave(s1, s2, s3)
  # Based on:
  # https://leetcode.com/problems/interleaving-string/discuss/3956393/99.78-2-Approaches-DP-and-Recursion
  m, n, l = s1.size, s2.size, s3.size
  return false if m + n != l 
  dp = Array.new(m+1){ Array.new(n+1,false)}
  dp[0][0] = true
  (1..m).each do |i|
    dp[i][0] = (dp[i-1][0] && s1[i-1] == s3[i-1])
  end
  (1..n).each do |j|
    dp[0][j] = (dp[0][j-1] && s2[j-1] == s3[j-1])
  end
  (1..m).each do |i|
    (1..n).each do |j|
      dp[i][j] = (dp[i-1][j] && s1[i-1] == s3[i+j-1]) || (dp[i][j-1] && s2[j-1] == s3[i+j-1])
    end
  end
  return dp[m][n]
end
