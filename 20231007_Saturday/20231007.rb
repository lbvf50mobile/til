# Leetcode: 1420. Build Array Where You Can Find The Maximum Exactly K Comparisons.
# https://leetcode.com/problems/build-array-where-you-can-find-the-maximum-exactly-k-comparisons/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 788 ms, faster than 100.00% of Ruby online submissions for Build
# Array Where You Can Find The Maximum Exactly K Comparisons.
# Memory Usage: 214.2 MB, less than 100.00% of Ruby online submissions for Build
# Array Where You Can Find The Maximum Exactly K Comparisons.
# 2023.10.07 Daily Challenge.
# @param {Integer} n
# @param {Integer} m
# @param {Integer} k
# @return {Integer}
def num_of_arrays(n, m, k)
  # Based on:
  # https://leetcode.com/problems/build-array-where-you-can-find-the-maximum-exactly-k-comparisons/solution/
  dp = Array.new(n+1).map{ Array.new(m+1).map{ Array.new(k+1,0)}}
  mod = (10**9 + 7)
  (m+1).times do |j|
    dp[n][j][0] = 1
  end
  (0...n).reverse_each do |i|
    (0..m).each do |j|
      (0..k).each do |r|
        ans = (j * dp[i+1][j][r]) % mod
        if r > 0
          (j+1..m).each do |num|
            ans = (ans + dp[i+1][num][r-1]) % mod
          end
        end
        dp[i][j][r] = ans
      end
    end
  end
  return dp[0][0][k]
end
