# Leetcode: 1312. Minimum Insertion Steps to Make a String Palindrome.
# https://leetcode.com/problems/minimum-insertion-steps-to-make-a-string-palindrome/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1474 ms, faster than 100.00% of Ruby online submissions for Minimum
# Insertion Steps to Make a String Palindrome.
# Memory Usage: 224.7 MB, less than 100.00% of Ruby online submissions for
# Minimum Insertion Steps to Make a String Palindrome.
# 2023.04.22 Daily Challenge.
# @param {String} s
# @return {Integer}
def min_insertions(s)
  # Based on the Leetcode's solution.
  n = s.size
  sr = s.reverse
  return n - lcs(s,sr,n)
end
def lcs(s1,s2,n)
  dp = Array.new(n+1){ Array.new(n+1,0)}
  (0..n).each do |i|
    (0..n).each do |j|
      if 0 == i || j == 0
          dp[i][j] = 0
      elsif s1[i-1] == s2[j-1]
        dp[i][j] = 1 + dp[i-1][j-1]
      else
        dp[i][j] = [dp[i-1][j],dp[i][j-1]].max
      end
    end
  end
  return dp[n][n]
end
