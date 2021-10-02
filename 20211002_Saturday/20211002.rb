# Leetcode: 174. Dungeon Game.
# https://leetcode.com/problems/dungeon-game/
# @param {Integer[][]} dungeon
# @return {Integer}
def calculate_minimum_hp(dungeon)
  # I going to use a PULL DP here.
  w,h = dungeon[0].size, dungeon.size
  dp = Array.new(h).map{ Array.new(w)}
  dp_add = Array.new(h).map{ Array.new(w)}

  # Idea is to store information in two storages.
  # 1) DP - how many health points in the room.
  # 2) ADD - number of additionals points, because without enimes he need only 1.

  # Return the knight's minimum initial health so that he can rescue the princess.
  (0...h).each do |i|
    (0...w).each do |j|
      curr = dungeon[i][j]
      if 0 == i && 0 == j
        health = 1 # Minmum value to get pass without monsters.
        total, add = add_and_total(curr,health)
        dp[i][j] = total
        dp_add[i][j] = add
        next
      end
      # Top row. Get only from the left.
      if 0 == i && 0 != j
        health = dp[i][j-1]
        total, add = add_and_total(curr,health)
        dp[i][j] = total
        dp_add[i][j] = add
        next
      end
      # Left column. Get only from the top.
      if 0 != i && 0 == j
        health = dp[i-1][j]
        total, add = add_and_total(curr,health)
        dp[i][j] = total
        dp_add[i][j] = add
        next
      end
      # Able to get from top or from the left.
      if 0 != i && 0 != j
        top = add_and_total(curr,dp[i-1][j])
        left = add_and_total(curr,dp[i][j-1])
        # Need to select with minimum add and maximum total.
        res = [top,left].sort{|a,b| a[1] == b[1] ? b[0] - a[0] : a[1] - b[1]}[0]
        total, add = res
        dp[i][j] = total
        dp_add[i][j] = add
        next
      end
      throw "Undescribed befaviour."
    end
  end
  1 + add[h-1][w-1]
end

def add_and_total(curr, health)
    new_health = health + curr
    add = 0
    total = 0
    if new_health <= 0
      # Adding new health only if the knight dies.
      add = 1 - new_health
      total = health + add
    else
      add = 0
      total = new_health
    end
    [total,add]
end

