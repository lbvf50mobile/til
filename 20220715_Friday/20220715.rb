# Leetcode: 695. Max Area of Island. 
# https://leetcode.com/problems/max-area-of-island/
# @param {Integer[][]} grid
# @return {Integer}
# Error: [[1,1,0,0,0],[1,1,0,0,0],[0,0,0,1,1],[0,0,0,1,1]]
def max_area_of_island(grid)
  @d = false
  @g = grid
  @v = Array.new(@g.size).map{ Array.new(@g[0].size,false)}
  ans = 0
  (0...@g.size).each do |i|
    (0...@g[0].size).each do |j|
      next if @v[i][j]
      next if 0 == @g[i][j]
      tmp = bfs_size(i,j)
      ans = tmp if tmp > ans
      puts "Start island: #{i},#{j}. Size #{tmp}. Ans #{ans}." if @d
    end
  end
  ans 
end

def correct(i,j)
  i.between?(0,@g.size-1) && j.between?(0,@g[0].size-1)
end

def bfs_size(i,j)
  puts "Start with #{i},#{j}." if @d
  size = 0 # Error was here.
  q1 = [i]
  q2 = [j]
  while (!q1.empty?) && (!q2.empty?)
    i = q1.shift
    j = q2.shift
    @v[i][j] = true
    size += 1
    puts "#{size}, #{i},#{j}, #{@v[i][j].inspect}, #{@g[i][j]}" if @d
    [[i+1,j],[i,j+1],[i-1,j],[i,j-1]].each do |ii,jj|
      puts "Add:#{ii},#{jj}, #{correct(ii,jj).inspect}, #{@v[i][j].inspect}" if @d
      next if ! correct(ii,jj)
      next if @v[ii][jj]
      next if 0 == @g[ii][jj]
      q1.push(ii) # Error was here.
      q2.push(jj)
    end
  end
  return size
end
