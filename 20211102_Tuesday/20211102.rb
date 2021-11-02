# Leetcode: 980. Unique Paths III.
# https://leetcode.com/problems/unique-paths-iii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 80 ms, faster than 91.67% of Ruby online submissions for Unique Paths III.
# Memory Usage: 210.1 MB, less than 58.33% of Ruby online submissions for Unique Paths III.
# @param {Integer[][]} grid
# @return {Integer}
def unique_paths_iii(grid)
  @g = grid
  # Number of ways to reach the aim.
  @ans = 0
  @counter = 0 # Used cells.
  @u = Array.new(grid.size).map{Array.new(grid[0].size)}
  @s,@e = find_start_end();
  # Create backtracking.
  dfs(@s[0],@s[1])
  # Return number of ways to reach the aim.
  @ans
end

def find_start_end()
  s,e = [],[]
  (0...@g.size).each do |i|
    (0...@g[0].size).each do |j|
      s = [i,j] if 1 == @g[i][j] 
      e = [i,j] if 2 == @g[i][j]
      @counter += 1 if @g[i][j] < 0
    end
  end
  [s,e]
end

def dfs(i,j)
  return if !(i.between?(0,@g.size-1) && j.between?(0,@g[0].size-1))
  return if @g[i][j] < 0 || @u[i][j]
  @counter += 1
  if [i,j] == @e
    @ans += 1 if @g.size * @g[0].size == @counter
    @counter -= 1
    return
  end
  @u[i][j] = true
  [[i+1,j],[i-1,j],[i,j+1],[i,j-1]].each do |(ii,jj)|
    dfs(ii,jj)
  end
  @counter -= 1
  @u[i][j] = false
end
