# Leetocde: 463. Island Perimeter.
# https://leetcode.com/problems/island-perimeter/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 372 ms, faster than 22.86% of Ruby online submissions for Island Perimeter.
# Memory Usage: 212.9 MB, less than 68.57% of Ruby online submissions for Island Perimeter.
# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
  # Each cell give 4 points of perimeter minus amout it's 
  # non whater neighbors.
  @g = grid
  sum = 0
  (0...@g.size).each do |i|
    (0...@g[0].size).each do |j|
      if ! is_water(i,j)
        sum += find_sum(i,j)
      end
    end
  end
  sum
end

def is_water(i,j)
  return true if ! i.between?(0,@g.size-1)
  return true if ! j.between?(0,@g[0].size-1)
  0 == @g[i][j]
end

def find_sum(i,j)
  total = 4
  [[0,1],[0,-1],[1,0],[-1,0]].each do |(di,dj)|
    ni,nj = i+di, j+dj
    if ! is_water(ni,nj)
      total -= 1
    end
  end
  total
end



