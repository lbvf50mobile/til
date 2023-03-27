# Leetcode: 64. Minimum Path Sum.
# https://leetcode.com/problems/minimum-path-sum/
# @param {Integer[][]} grid
# @return {Integer}
def min_path_sum(grid)
  @g = grid
  # First, need to work with a top row.
  i = 0
  show()
  # It is a PULL DP. Take value from the right.
  (1...grid[0].size).each do |j|
    grid[i][j] += grid[i][j-1]
  end
  show()

  # Second, need to work with a left column.
  j = 0
  # It is a PULL DP. Take value from the top.
  (1...grid.size).each do |i|
    grid[i][j] += grid[i-1][j]
  end
  show()
  # Third. Take care about the rest of the matrix.
  # Select minimum between left and top cells.
  p 1
  (1...grid.size).each do |i|
    p 11
    (1...grid[0].size).each do |j|
      p 2
      p[i,j]
      grid[i][j] += [grid[i-1][j],grid[i][j-1]].min
    end
  end
  show()
  # Return a bottom right element.
  return grid.last.last
end

def show()
  p ?-
  (0...@g.size).each do |i|
    p @g[i]
  end
end
