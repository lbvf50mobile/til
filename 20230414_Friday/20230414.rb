# Leetcode: 516. Longest Palindromic Subsequence.
# https://leetcode.com/problems/longest-palindromic-subsequence/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 612 ms, faster than 100.00% of Ruby online submissions for Longest
# Palindromic Subsequence. 
# Memory Usage: 256.6 MB, less than 10.00% of Ruby online submissions for
# Longest Palindromic Subsequence.
# 2023.04.14 Daily Challenge.
# @param {String} s
# @return {Integer}
def longest_palindrome_subseq(s)
  # Based on:
  # https://leetcode.com/problems/longest-palindromic-subsequence/solution/
  @s = s
  @n = s.size
  @dp = Array.new(@n).map{ Array.new(@n)}
  return lps(0, @n-1)
end
def lps(i,j)
  return 0 if i > j
  return 1 if i == j
  return @dp[i][j] if @dp[i][j]
  ans = 0
  if @s[i] == @s[j] 
    ans = 2 + lps(i+1,j-1)
  else
    ans = [lps(i+1,j),lps(i, j-1)].max
  end
  @dp[i][j] = ans
  return ans
end
