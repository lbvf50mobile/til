# Leetcode: 59. Spiral Matrix II.
# https://leetcode.com/problems/spiral-matrix-ii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 75 ms, faster than 96.15% of Ruby online submissions for Spiral Matrix II.
# Memory Usage: 211.2 MB, less than 11.54% of Ruby online submissions for Spiral Matrix II.
# @param {Integer} n
# @return {Integer[][]}
def generate_matrix(n)
  @d = false
  matrix = Array.new(n).map{ Array.new(n,0)}
  i,j = 0,0
  value = 1
  addition = [
    [0,+1], # 0 Left.
    [+1,0], # 1 Down.
    [0,-1], # 2 Right.
    [-1,0], # 3 Top.
  ]
  direction = 0
  while matrix[i] && 0 == matrix[i][j]
    puts "#{i},#{j},v=#{value} d=#{direction}" if @d
    matrix[i][j] = value
    value += 1
    di,dj = addition[direction]
    ii,jj = i+di, j+dj
    i_in_bounds = ii.between?(0,n-1)
    j_in_bounds = jj.between?(0,n-1)
    # If reach border.
    if !(i_in_bounds && j_in_bounds)
      puts "Was d=#{direction}" if @d
      direction = (direction+1)%4
      puts "Now d=#{direction}" if @d
      di,dj = addition[direction]
      ii,jj = i+di, j+dj
      puts "new #{ii},#{jj}" if @d
    # Next step to the already filled element.
    elsif 0 != matrix[ii][jj]
      puts "Was d=#{direction}" if @d
      direction = (direction+1)%4
      puts "Now d=#{direction}" if @d
      di,dj = addition[direction]
      ii,jj = i+di, j+dj
      puts "new #{ii},#{jj}" if @d
    end
    i,j = ii, jj
  end
  matrix
end
