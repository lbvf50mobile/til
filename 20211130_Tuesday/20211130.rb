# Leetcode: 85. Maximal Rectangle.
# https://leetcode.com/problems/maximal-rectangle/
# @param {Character[][]} matrix
# @return {Integer}
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
  (1...matrix.size).each do |i| # Arr cols. All rows.
    (1...matrix[0].size).each do |j|
      next if ?0 == matrix[i][j]
      rc_width = [row[i][j] - 1, rec[i-1][j-1][:width]].min + 1
      rc_height = [col[i][j] - 1, rec[i-1][j-1][:height]].min + 1
      s = rc_width * rc_height 
      r = row[i][j]; c = col[i][j]
      a = 0
      if r >= c && r>= s
        a = r
        rec[i][j] = {height: 1, width: r}
      elsif c >= r && c >= s
        a = c
        rec[i][j] = {height: c, width: 1}
      else
        a = s
        rec[i][j] = {height: rc_height, width: rc_width}
      end
      squares[i][j] = a
      max = a if a > max
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
