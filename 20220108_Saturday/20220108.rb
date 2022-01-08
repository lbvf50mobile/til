# Leetcode: 1463. Cherry Pickup II.
# https://leetcode.com/problems/cherry-pickup-ii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 2814 ms, faster than 100.00% of Ruby online submissions for Cherry Pickup II.
# Memory Usage: 214.3 MB, less than 100.00% of Ruby online submissions for Cherry Pickup II.
# @param {Integer[][]} grid
# @return {Integer}
def cherry_pickup(grid)
  @d = false
  @g, @height, @width = grid, grid.size, grid[0].size
  @dp = Array.new(@height).map do 
    Array.new(@width).map{ Array.new(@width,false)}
  end
  return dfs(0,0,@width-1)
end

def dfs(row,col1,col2)
  return @dp[row][col1][col2] if @dp[row][col1][col2]
  max = @g[row][col1] + @g[row][col2]
  base = max
  [[row+1,col1],[row+1,col1+1], [row+1,col1-1]].each do |point1|
    [[row+1,col2],[row+1,col2+1],[row+1,col2-1]].each do |point2|
      p1_in = in_grid(point1)
      p2_in = in_grid(point2)
      diff = different(point1,point2)
      puts "point1=#{point1} #{p1_in.inspect} point2=#{point2} #{p2_in.inspect} diff=#{diff}" if @d
      if p1_in && p2_in && diff
        r1,c1 = point1
        r2,c2 = point2
        tmp = base + dfs(r1,c1,c2)
        max = tmp if tmp > max
        puts "Caluclate max" if @d
      else
        puts "Skip" if @d
      end
    end
  end
  puts "[#{row}][#{col1}][#{col2}] #{base} => #{max}" if @d
  @dp[row][col1][col2] = max
  return max
end

def in_grid(point)
  row, col = point
  row.between?(0,@height-1) && col.between?(0,@width-1)
end
def different(point1, point2)
  r1,c1 = point1
  r2,c2 = point2
  return false if r1 == r2 && c1 == c2
  return true
end
