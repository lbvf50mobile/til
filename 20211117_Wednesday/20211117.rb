# Leetcode: 62. Unique Paths.
# https://leetcode.com/problems/unique-paths/
# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
  dp = Array.new(m).map{ Array.new(n,0)}
  (0...n).each{|j| dp[0][j] = 1}
  (1...m).each do |i|
    (0...n).each do |j|
      value = dp[i][j]
      [[i+1,j],[i,j+1]].each do |(ii,jj)|
        dp[ii][jj] += value if ii.between?(0,m-1) && jj.between?(0,n-1)
      end
    end
  end
  dp[m-1][n-1]
end
