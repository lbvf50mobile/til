# Leetcode: 808. Soup Servings.
# https://leetcode.com/problems/soup-servings/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 395 ms, faster than 100.00% of Ruby online submissions for Soup
# Servings.
# Memory Usage: 238.5 MB, less than 100.00% of Ruby online submissions for Soup
# Servings.
# 2023.07.29 Daily Challenge.
# @param {Integer} n
# @return {Float}
def soup_servings(n)
  # Based on:
  # https://leetcode.com/problems/soup-servings/solution/
  m = (n.fdiv(25)).ceil.to_i
  @dp = {}
  @dp[0] = {0 => 0.5}
  dp = @dp
  (1..m).each do |k|
    dp[0][k] = 1.0
    dp[k] = {0 => 0.0}
    (1..k).each do |j|
      # p [k,j]
      dp[j][k] = cdp(j,k)
      dp[k][j] = cdp(k,j)
      return 1 if dp[k][k] && dp[k][k] > 1 - 1e-5
    end
  end
  return @dp[m][m]
end

def cdp(i,j)
  dp = @dp
  a = [0,i-4].max # max(0, i - 4)
  b = [0, i-3].max # max(0, i - 3)
  c = [0, i-2].max # max(0, i - 2)
  d = [0,j-2].max # max(0, j - 2)
  e = [0,j-3].max # max(0, j - 3)
  first = dp[a][j] || 0
  second = dp[b][j-1] || 0
  third = dp[c][d] || 0
  fourth = dp[i-1][e] || 0
  return (first + second + third + fourth)/(4.to_f)
end
