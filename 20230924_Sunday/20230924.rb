# Leetcode: 799. Champagne Tower.
# https://leetcode.com/problems/champagne-tower/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 136 ms, faster than 100.00% of Ruby online submissions for Champagne
# Tower.
# Memory Usage: 214.2 MB, less than 100.00% of Ruby online submissions for
# Champagne Tower.
# 2023.09.24 Daily Challenge.
# @param {Integer} poured
# @param {Integer} query_row
# @param {Integer} query_glass
# @return {Float}
def champagne_tower(poured, query_row, query_glass)
  # Based on:
  # https://leetcode.com/problems/champagne-tower/solution/
  dp = Array.new(101){|i| Array.new(i+1,0)}
  dp[0][0] = poured
  (0..query_row).each do |r|
    (0..r).each do |c|
      q = (dp[r][c] - 1).fdiv(2)
      if q > 0
        dp[r+1][c] += q
        dp[r+1][c+1] += q
      end
    end
  end
  return [1,dp[query_row][query_glass]].min
end
