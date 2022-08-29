# Leetcode: 200. Number of Islands.
# https://leetcode.com/problems/number-of-islands/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 439 ms, faster than 25.75% of Ruby online submissions for Number of Islands.
# Memory Usage: 221.8 MB, less than 27.47% of Ruby online submissions for Number of Islands.
# @param {Character[][]} grid
# @return {Integer}
def num_islands(grid)
  @d = false
  @g = grid
  @v = Array.new(@g.size).map{ Array.new(@g[0].size, false)}
  answer = 0
  (0...@g.size).each do |i|
    (0...@g[0].size).each do |j|
      next if ?0 == @g[i][j] # Error. Need to compare with strings.
      next if @v[i][j]
      p [i,j, "<-"] if @d
      bfs(i,j)
      show_v if @d
      answer += 1
      p answer if @d
    end
  end
  answer
end

def inside(i,j)
  i.between?(0,@g.size-1) && j.between?(0, @g[0].size - 1)
end

def bfs(i,j)
  return if @v[i][j]
  q = [ [i,j]]
  @v[i][j] = true
  while ! q.empty?
    ii, jj = q.shift
    [[ii+1,jj],[ii-1,jj],[ii,jj-1],[ii,jj+1]].each do |ni,nj|
      next if ! inside(ni,nj)
      next if @v[ni][nj]
      next if ?0 == @g[ni][nj] # Error. Forget about this check.
      # Second error. Matrix filled with strings!
      p [ni,nj,@g[ni][nj],@v[ni][nj]] if @d
      @v[ni][nj] = true
      q.push([ni,nj])
    end
  end
end

def show_v
  (0...@g.size).each do |i|
    line = [] 
    (0...@g[0].size).each do |j|
      line.push(@v[i][j] ? 1 : 0)
    end
    puts line.join(?,)
  end
end
