# Leetcode: 1444. Number of Ways of Cutting a Pizza.
# https://leetcode.com/problems/number-of-ways-of-cutting-a-pizza/
# @param {String[]} pizza
# @param {Integer} k
# @return {Integer}
def ways(pizza, k)
  # Based on:
  # https://leetcode.com/problems/number-of-ways-of-cutting-a-pizza/
  r,c = pizza.size, pizza[0].size
  ap = Array.new(r+1).map{ Array.new(c+1,0) }
  (0...r).reverse_each do |i|
    (0...c).reverse_each do |j|
      x = pizza[i][j] ? 1 : 0
      ap[i][j] = x + ap[i+1][j] + ap[i][j+1] + ap[i+1][j+1]
    end
  end
  dp = Array.new(k).map{ Array.new(r).map{ Array.new(c,0)}}
  dp[0] = Array.new(r).map{|i| Array.new(c).map{|j| ap[i][j] > 0 ? 1 : 0}} 
  mod = 1000000007
  (1...k).each do |rmn|
    (0...r).each do |i|
      (0...c).each do |j|
        val = 0
        (i+1...r).each do |ni|
          val += dp[rm-1][ni][j] if ap[i][j] - ap[ni][j] > 0
        end
        (j+1...c).each do |nj|
          val += dp[rm-1][i][nj] if ap[i][j] - ap[i][nj] > 0
        end
        dp[rmn][i][j] = val % mod
      end
    end
  end
  return dp[k-1][0][0]
end
