# Leetcode: 837. New 21 Game.
# https://leetcode.com/problems/new-21-game/
# @param {Integer} n
# @param {Integer} k
# @param {Integer} max_pts
# @return {Float}
# TLE.
def new21_game(n, k, max_pts)
  # Based on:
  # https://leetcode.com/problems/new-21-game/solution/
  dp = Array.new(n+1,0)
  dp[0] = 1
  (1..n).each do |i|
    (1..max_pts).each do |j|
      dp[i] += (dp[i-j].fdiv(max_pts)) if i >= j && i - j < k
    end
  end
  return dp[k..-1].sum
end
