# Leetcode: 85. Maximal Rectangle.
# https://leetcode.com/problems/maximal-rectangle/
# = = = = = = =
# Accepted.
# Thanks God!
# Accepted at the second time.
# Thanks God, Jesus Christ!
# = = = = = = =
# Runtime: 188 ms, faster than 80.65% of Ruby online submissions for Maximal Rectangle.
# Memory Usage: 232.9 MB, less than 6.45% of Ruby online submissions for Maximal Rectangle.
# Runtime: 538 ms, faster than 33.33% of Ruby online submissions for Maximal
# Rectangle.
# Memory Usage: 243.8 MB, less than 33.33% of Ruby online submissions for
# Maximal Rectangle.
# 2024.04.13 Daily Callenge.
# @param {Character[][]} matrix
# @return {Integer}
# From: December 1, 2021 4:47 AM.
def maximal_rectangle(matrix)
  return 0 if matrix.empty?
  # To reduce number of checks add row and col of zeros.
  matrix.each{|x| x.unshift(0)} # Add a new column.
  matrix.unshift(Array.new(matrix[0].size,0)) # Add a new row.
  row = Array.new(matrix.size).map{ Array.new(matrix[0].size,0)}
  col = Array.new(matrix.size).map{ Array.new(matrix[0].size,0)}
  squares = Array.new(matrix.size).map{ Array.new(matrix[0].size,0)}
  rec = Array.new(matrix.size).map{ Array.new(matrix[0].size)
    .map{|_| x = {height:0,width:0}; x}}
  max = 0
  # Fill rows.
  (0...matrix.size).each do |i| # All rows. From 1 col.
    (1...matrix[0].size).each do |j|
       row[i][j] = 1 + row[i][j-1] if ?1 == matrix[i][j] 
    end
  end
  # Fill cols.
  (0...matrix[0].size).each do |j| # All cols. From 1 row.
    (1...matrix.size).each do |i|
      col[i][j] = 1 + col[i-1][j] if ?1 == matrix[i][j] 
    end
  end
  # Fill rec.
  @c,@r,@m = col, row, matrix
  (1...matrix.size).each do |i| # Arr cols. All rows.
    (1...matrix[0].size).each do |j|
      next if ?0 == matrix[i][j]
      tmp = find_local_max(i,j)
      squares[i][j] = tmp
      max = tmp if tmp > max
    end
  end
=begin
  puts "Rows"
  (0...matrix.size).each{|i| p row[i]}
  puts "Cols"
  (0...matrix.size).each{|i| p col[i]}
  puts "Squares"
  (0...matrix.size).each{|i| p col[i]}
=end
  max
end

def find_local_max(i,j)
  d = false
  if 3 == i && j == 5
    # p ?o
    # d = true
  end
  # start walk from i and j.
  # up  (@c[i][j] - 1) step 
  up = i - @c[i][j] + 1
  ii = i
  width = @r[i][j]
  max = 0
  puts "will go up till #{up}" if d
  while  ii >=  up
    height = i - ii + 1
    width = @r[ii][j] if @r[ii][j] < width
    s = height*width
    puts "Col=#{jj} height = #{height} w=#{width} s=#{s}" if d
    max = s if s > max
    ii -= 1
  end
  max
end
