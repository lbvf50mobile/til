# Leetcode: 1254. Number of Closed Islands.
# https://leetcode.com/problems/number-of-closed-islands/
# @param {Integer[][]} grid
# @return {Integer}
def closed_island(grid)
  # Based on:
  # https://leetcode.com/problems/number-of-closed-islands/solution/
  @g, @m, @n = grid, grid.size, grid[0].size
  @v = Array.new(@m).map{ Array.new(@n,false)}
  cnt = 0
  (0...@m).each do |i|
    (0...@n).each do |j|
      if 0 == @g[i][j] && !@v[i][j] && bfs(i,j)
        cnt += 1
      end
    end
  end
  return cnt
end

def bfs(x,y)
  q = [[x,y]]
  @v[x][y] = true
  dx = [0,1,0,-1]
  dy = [-1,0,1,0]
  cls = true
  while ! q.empty?
    x,y = q.shift
    (0...4).each do |i|
      r,c = x+dx[i], y+dy[i]
      if r < 0 || r >= @m || c < 0 || c >= @n
        cls = false
      else
        next if !(0 == @g[r][c] && !@v[r][c])
        q.push([r,c])
        @v[r][c] = true
      end
    end
  end
  return cls
end
