# Leetcode: 279. Perfect Squares.
# https://leetcode.com/problems/perfect-squares/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 1695 ms, faster than 26.67% of Ruby online submissions for Perfect Squares.
# Memory Usage: 210 MB, less than 96.67% of Ruby online submissions for Perfect Squares.
# based on:
# https://leetcode.com/problems/perfect-squares/discuss/71495/An-easy-understanding-DP-solution-in-Java
# @param {Integer} n
# @return {Integer}
def num_squares(n)
  dp = Array.new(n+1,0)
  dp[0] = 0
  (1..n).each do |num|
    min = dp[num-1] + 1
    (2...num).each do |i|
      arg = num - (i*i)
      break if arg < 0
      value = dp[arg] + 1
      min = value if value < min
    end
    dp[num] = min
  end
  dp[n]
    
end
