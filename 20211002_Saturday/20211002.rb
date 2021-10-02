# Leetcode: 174. Dungeon Game.
# https://leetcode.com/problems/dungeon-game/
# @param {Integer[][]} dungeon
# @return {Integer}
def calculate_minimum_hp(dungeon)
  # I going to use a PULL DP here.
  w,h = dungeon[0].size, dungeon.size
  dp = Array.new(h).map{ Array.new(w)}

  (0...h).each do |i|
    (0...w).each do |j|
      if 0 == i && 0 == j
        dp[i][j] = dungeon[i][j]
        next
      end
      if 0 == j
        dp[i][j] = dungeon[i][j] + dp[i-1][j]
        next
      end
      max = dungeon[i][j] + dp[i-1][j]
      tmp = dungeon[i][j] + dp[i][j-1]
      max = tmp if tmp > max
      dp[i][j] = max
    end
  end
  ans = dp[h-1][w-1]
  return 1 if ans > 0
  return 1 - ans
end
