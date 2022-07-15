# Leetcode: 695. Max Area of Island. 
# https://leetcode.com/problems/max-area-of-island/
# @param {Integer[][]} grid
# @return {Integer}
def max_area_of_island(grid)
  @g = grid
  @v = Array.new(@g.size).map{ @g[0].size}
  ans = 0
  (0...@g.size).each do |i|
    (0...@g[0].size).each do |j|
      next if @v[i][j]
      next if 0 == @v[i][j]
      tmp = bfs_size(i,j)
      ans = tmp if tmp > ans
    end
  end
  ans 
end

def correct(i,j)
  i.between?(0,@g.size-1) && j.between?(0,@g[0].size-1)
end

def bfs_size(i,j)
  size = 1
  q1 = [i]
  q2 = [j]
  while (!q1.empty?) && (!q2.empty?)
    i = q1.shift
    j = q2.shift
    @v[i][j] = true
    size += 1
    [[i+1,j],[i,j+1],[i-1,j],[i,j-1]].each do |ii,jj|
      next if ! correct(ii,jj)
      next if @v[ii][jj]
      next if 0 == @g[ii][jj]
      q1.push(i)
      q2.push(j)
    end
  end
  return size
end
