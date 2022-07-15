# Leetcode: 695. Max Area of Island. 
# https://leetcode.com/problems/max-area-of-island/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 177 ms, faster than 58.59% of Ruby online submissions for Max Area of Island.
# Memory Usage: 211.4 MB, less than 75.76% of Ruby online submissions for Max Area of Island.
# @param {Integer[][]} grid
# @return {Integer}
# fixed Error: [[1,1,0,0,0],[1,1,0,0,0],[0,0,0,1,1],[0,0,0,1,1]]
def max_area_of_island(grid)
  @d = false
  @g = grid
  @v = Array.new(@g.size).map{ Array.new(@g[0].size,false)}
  ans = 0
  (0...@g.size).each do |i|
    (0...@g[0].size).each do |j|
      next if @v[i][j]
      next if 0 == @g[i][j] # Error was here.
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
  size = 0 # Error was here.
  q1 = [i]
  q2 = [j]
  coords = [] if @d
  @v[i][j] = true
  while (!q1.empty?) && (!q2.empty?)
    i1 = q1.shift
    j1 = q2.shift
    # @v[i1][j1] = true # Error here.
    coords.push([i1,j1]) if @d
    size += 1
    # puts "#{size}, #{i1},#{j1}, #{@v[i1][j1].inspect}, #{@g[i1][j1]}" if @d
    [[i1+1,j1],[i1,j1+1],[i1-1,j1],[i1,j1-1]].each do |ii,jj|
      # puts "Add:#{ii},#{jj}, #{correct(ii,jj).inspect}, #{@v[i][j].inspect}" if @d
      next if ! correct(ii,jj)
      next if @v[ii][jj]
      next if 0 == @g[ii][jj]
      q1.push(ii) # Error was here.
      q2.push(jj)
      @v[ii][jj] = true
    end
  end
  puts coords.inspect if @d
  puts "#{i},#{j}=#{size}" if @d
  return size
end
