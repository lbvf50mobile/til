# Leetcode: 1140. Stone Game II.
# https://leetcode.com/problems/stone-game-ii/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 398 ms, faster than 100.00% of Ruby online submissions for Stone Game
# II.
# Memory Usage: 212.6 MB, less than 100.00% of Ruby online submissions for Stone
# Game II.
# 2023.05.26 Daily Challenge.
# @param {Integer[]} piles
# @return {Integer}
def stone_game_ii(piles)
  # Based on:
  # https://leetcode.com/problems/stone-game-ii/solution/
  @pl = piles
  @n = piles.size
  @dp = Array.new(2){ Array.new(@n+1){ Array.new(@n+1,-1)}}
  return f(0,0,1)
end

def f(pe,i,m)
  n = @n
  return 0 if @n == i
  return @dp[pe][i][m] if -1 != @dp[pe][i][m]
  res = (1 == pe) ? 1_000_000 : -1
  s = 0
  (1..[2*m,n-i].min).each do |x|
    # p [@pl.size, x, i+x-1]
    s += @pl[i+x-1]
    if 0 == pe
      res = [res, s + f(1,i+x,[m,x].max)].max
    else
      res = [res, f(0,i+x,[m,x].max)].min
    end
  end
  @dp[pe][i][m] = res
  return res
end
