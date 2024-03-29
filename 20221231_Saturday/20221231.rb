# Leetcode: 980. Unique Paths III.
# https://leetcode.com/problems/unique-paths-iii/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 123 ms, faster than 83.33% of Ruby online submissions for Unique Paths III.
# Memory Usage: 211.3 MB, less than 16.67% of Ruby online submissions for Unique Paths III.
# 2022.12.31 Daily Challenge.
# @param {Integer[][]} grid
# @return {Integer}
def unique_paths_iii(grid)
  @g = grid
  @m,@n = grid.size, grid[0].size
  @si,@sj = 0,0
  @ei,@ej = 0,0
  @nob = 0
  fill_data()
  @answer = 0
  @v = Array.new(@m).map{ Array.new(@n, false)}
  bktr(@si,@sj,0)
  return @answer
end

def bktr(i,j,counter)
  return if ! correct(i,j)
  return if -1 == @g[i][j]
  return if @v[i][j]
  @v[i][j] = true
  counter += 1
  if 2 == @g[i][j]
    @answer += 1 if counter == @nob
  else
    [[i+1,j],[i-1,j],[i,j+1],[i,j-1]].each do |ni,nj|
      bktr(ni,nj,counter)
    end
  end
  @v[i][j] = false
end

def fill_data()
  @m.times do |i|
    @n.times do |j|
      if -1 != @g[i][j]
        @nob += 1
        if 1 == @g[i][j]
          @si,@sj = i,j
        end
        if 2 == @g[i][j]
          @ei,@ej = i,j
        end
      end
    end
  end
end

def correct(i,j)
  i.between?(0,@m-1) && j.between?(0,@n-1)
end
