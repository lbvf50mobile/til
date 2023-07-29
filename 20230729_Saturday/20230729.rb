# Leetcode: 808. Soup Servings.
# https://leetcode.com/problems/soup-servings/
# @param {Integer} n
# @return {Float}
def soup_servings(n)
  @m = (n.fdiv(25)).ceil.to_i
  @dp = {}
  dp[0] = {0:0.5}
  (1..@m).each do |k|
    dp[0][k] = 1
    dp[k] = {0: 0}
    (1...k).each do |j|
      dp[j][k] = cdp(j,k)
      dp[k][j] = cdp(k,j)
      return 1 if dp[k][k] > 1 - 1e-5
    end
  end
  return @dp[m][m]
end

def cdp(i,j)
  a = [0,i-4].max
  b = [0, i-3].max
  c = [0, i-2].max
  d = [0,j-2].max
  e = [0,j-3].max
  (dp[a][j] + dp[b][j-1] + dp[c][d] + dp[i-1][e])/4.to_f
end
