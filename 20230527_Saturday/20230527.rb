# Leetcode: 1406. Stone Game III.
# https://leetcode.com/problems/stone-game-iii/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 493 ms, faster than 100.00% of Ruby online submissions for Stone Game
# III.
# Memory Usage: 235.4 MB, less than 33.33% of Ruby online submissions for Stone
# Game III.
# 2023.05.27 Daily Challenge.
# @param {Integer[]} stone_value
# @return {String}
def stone_game_iii(stone_value)
  # Based on:
  # https://leetcode.com/problems/stone-game-iii/solution/
  n = stone_value.size
  sv = stone_value
  dp = Array.new(n+1,0)
  (0...n).reverse_each do |i|
    dp[i] = sv[i] - dp[i+1]
    if i + 2 <= n
      x = sv[i] + sv[i+1] - dp[i+2]
      dp[i] = x if dp[i] < x
    end
    if i + 3 <= n
      x = sv[i] + sv[i+1] + sv[i+2] - dp[i+3]
      dp[i] = x if dp[i] < x
    end
  end
  return "Tie" if 0 == dp[0]
  return "Alice" if 0 < dp[0]
  return "Bob" if 0 > dp[0]
  raise "Unknown"
end
