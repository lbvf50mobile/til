# Leetcode: 1020. Number of Enclaves.
# https://leetcode.com/problems/number-of-enclaves/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 529 ms, faster than 25.00% of Ruby online submissions for Number of
# Enclaves.
# Memory Usage: 218.3 MB, less than 75.00% of Ruby online submissions for Number
# of Enclaves.
# 2023.04.07 Daily Challenge.
# @param {Integer[][]} grid
# @return {Integer}
def num_enclaves(grid)
  # Lands you cannot jump out of the edge.
  @d = true
  @g,@m,@n = grid, grid.size, grid[0].size
  @v = Array.new(@m).map{ Array.new(@n,false) }
  # Iterate over all cells, but calculate only unvisited.
  cnt = 0
  (0...@m).each do |i|
    (0...@n).each do |j|
      next if @v[i][j]
      next if 0 == @g[i][j]
      a,b = do_jump_bfs(i,j)
      if !a
        cnt += b
      end
    end
  end
  return cnt
end

def do_jump_bfs(i,j)
  @v[i][j] = true
  ans = false # Jump over an edje.
  cnt = 0
  q = [[i,j]]
  while !q.empty?
    ii,jj = q.shift
    cnt += 1
    d = [[-1,0],[0,1],[1,0],[0,-1]]
    # top, right, bottom, left.
    d.each do |di,dj|
      ni,nj = ii+di, jj+dj
      if ni.between?(0,@m-1) && nj.between?(0,@n-1)
        next if 0 == @g[ni][nj] || @v[ni][nj]
        @v[ni][nj] = true
        q.push([ni,nj])
      else
        ans = true # It is possible to jump out.
      end
    end
  end
  return [ans, cnt]
end
