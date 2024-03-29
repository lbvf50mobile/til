# Leetcode: 1091. Shortest Path in Binary Matrix.
# https://leetcode.com/problems/shortest-path-in-binary-matrix/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 566 ms, faster than 44.44% of Ruby online submissions for Shortest
# Path in Binary Matrix.
# Memory Usage: 215.6 MB, less than 11.11% of Ruby online submissions for
# Shortest Path in Binary Matrix.
# 2023.06.01 Daily Challenge.
# @param {Integer[][]} grid
# @return {Integer}
def shortest_path_binary_matrix(grid)
  @n = grid.size
  g = grid
  @v = Array.new(@n){ Array.new(@n)}
  return -1 if 1 == g[0][0]
  round = 1
  q = [[0,0]]
  @v[0][0] = true
  while !q.empty?
    nq = []
    q.each do |i,j|
      return round if i == @n - 1 && j == @n - 1
      [
        [i-1, j-1],
        [i-1, j+0],
        [i-1, j+1],
        [i, j-1],
        [i, j+1],
        [i+1, j-1],
        [i+1, j+0],
        [i+1, j+1],
      ].each do |ni,nj|
        next if ! ins(ni,nj)
        next if 0 != g[ni][nj] 
        next if @v[ni][nj]
        @v[ni][nj] = true
        nq.push([ni,nj])
      end
    end
    q = nq
    round += 1
  end
  return -1
end

def ins(i,j)
  i.between?(0,@n-1) && j.between?(0,@n-1)
end
