# Leetcode: 664. Strange Printer.
# https://leetcode.com/problems/strange-printer/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1731 ms, faster than 100.00% of Ruby online submissions for Strange
# Printer.
# Memory Usage: 212.3 MB, less than 100.00% of Ruby online submissions for
# Strange Printer.
# 2023.07.30 Daily Challenge.
# @param {String} s
# @return {Integer}
def strange_printer(s)
  # Based on:
  # https://leetcode.com/problems/strange-printer/solution/
  n = s.size
  dp = Array.new(n){ Array.new(n,n)}
  (1..n).each do |lng|
    (0..n-lng).each do |l|
      r = l + lng - 1
      j = -1
      (l...r).each do |i|
        j = i if s[i] != s[r] && -1 == j
        dp[l][r] = [dp[l][r], 1+dp[j][i]+dp[i+1][r]].min if -1 != j
      end
      dp[l][r] = 0 if -1 == j
    end
  end
  return dp[0][n-1] + 1
end
