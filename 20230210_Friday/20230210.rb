# Leetcode: 1162. As Far from Land as Possible.
# https://leetcode.com/problems/as-far-from-land-as-possible/
# @param {Integer[][]} grid
# @return {Integer}
def max_distance(grid)
  rows = grid.size
  cols = grid[0].size
  md = rows + cols + 1
  dist = Array.new(rows).map{ Array.new(cols,md)}
  (0...rows).each do |i|
    (0...cols).each do |j|
      if 1 == grid[i][j]
        dist[i][j] = 0
      else
        dist[i][j] = [ dist[i][j],
                       [i>0 ? dist[i-1][j]+1 : md, j > 0 ? dist[i][j-1] : md]
        ].min
      end
    end
  end
  ans = -100_000
  (0...rows).reverse_each do |i|
  end
  return ans
end
