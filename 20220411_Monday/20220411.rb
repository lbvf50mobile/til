# Leetcode: 1260. Shift 2D Grid.
# https://leetcode.com/problems/shift-2d-grid/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 837 ms, faster than 100.00% of Ruby online submissions for Shift 2D Grid.
# Memory Usage: 211.6 MB, less than 50.00% of Ruby online submissions for Shift 2D Grid.
# @param {Integer[][]} grid
# @param {Integer} k
# @return {Integer[][]}
def shift_grid(grid, k)
  @grid = grid
  (k%(grid.size*grid[0].size)).times{ shift}
  @grid
end

def shift
  m,n = @grid.size, @grid[0].size
  prev = @grid[m-1][n-1]
  (0...m).each do |i|
    (0...n).each do |j|
      @grid[i][j],prev = prev, @grid[i][j]
    end
  end
end
