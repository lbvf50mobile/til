# Leetcode: 879. Profitable Schemes.
# https://leetcode.com/problems/profitable-schemes/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1977 ms, faster than 100.00% of Ruby online submissions for
# Profitable Schemes.
# Memory Usage: 248 MB, less than 100.00% of Ruby online submissions for
# Profitable Schemes.
# 2023.04.22 Updated.

# @param {Integer} n
# @param {Integer} min_profit
# @param {Integer[]} group
# @param {Integer[]} profit
# @return {Integer}
def profitable_schemes(n, min_profit, group, profit)
  # Based on:
  # https://leetcode.com/problems/profitable-schemes/solution/

  @mod = 10**9 + 7
  dp = Array.new(101){ Array.new(101){ Array.new(101,0)}}
  @mp,@gr,@pr, @n = min_profit, group, profit, n # Fixed Error! Wrong order.

  # Initializing the base case.
  (0..n).each do |cnt| # Fixed Error! Need to be inclusive.
    dp[@gr.size][cnt][@mp] = 1
  end

  (0...@gr.size).reverse_each do |i|
    (0..n).each do |cnt|
      (0..@mp).each do |prf|
        # Ways to get a profitable scheme without this crime.
        dp[i][cnt][prf] = dp[i+1][cnt][prf]
        if cnt + @gr[i] <= n
          min = [@mp,prf+@pr[i]].min
          dp[i][cnt][prf] += dp[i+1][cnt+@gr[i]][min]
          dp[i][cnt][prf] %= @mod
        end
      end
    end
  end
  return dp[0][0][0]
end
