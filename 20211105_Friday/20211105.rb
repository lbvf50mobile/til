# Leetcode: 441. Arranging Coins.
# https://leetcode.com/problems/arranging-coins/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 484 ms, faster than 11.76% of Ruby online submissions for Arranging Coins.
# Memory Usage: 209.8 MB, less than 82.35% of Ruby online submissions for Arranging Coins.
# @param {Integer} n
# @return {Integer}
def arrange_coins(n)
  level = 0
  next_level_coins = 1
  while n > 0
    n -= next_level_coins
    next_level_coins += 1
    level += 1 if n >= 0
    # p [level, n, next_level_coins]
  end
  return level
end
