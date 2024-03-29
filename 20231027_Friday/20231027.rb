# Leetcode: 5. Longest Palindromic Substring.
# https://leetcode.com/problems/longest-palindromic-substring/
# = = = = = = = = = = = = = =
# Correct.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# TLE.
# 2023.10.27 Daily Challenge.
# @param {String} s
# @return {String}
def longest_palindrome(s)
  # Based on:
  # https://leetcode.com/problems/longest-palindromic-substring/solution/
  n = s.size
  dp = Array.new(n){ Array.new(n, false)}
  ans = [0,0]
  n.times do |i|
    dp[i][i] = true
  end
  (n-1).times do |i|
    if s[i] == s[i+1]
      dp[i][i+1] = true
      ans = [i, i + 1]
    end
  end
  (2...n).each do |diff|
    (0...n-diff).each do |i|
      j = i + diff
      if s[i] == s[j] && dp[i+1][j-1]
        dp[i][j] = true
        ans = [i,j]
      end
    end
  end
  i,j = ans
  return s[i..j]
end
