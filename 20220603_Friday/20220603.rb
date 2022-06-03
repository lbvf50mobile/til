# Leetcode: 304. Range Sum Query 2D - Immutable.
# https://leetcode.com/problems/range-sum-query-2d-immutable/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 521 ms, faster than 50.00% of Ruby online submissions for Range Sum Query 2D - Immutable.
# Memory Usage: 224.2 MB, less than 50.00% of Ruby online submissions for Range Sum Query 2D - Immutable.
#
class NumMatrix

=begin
    :type matrix: Integer[][]
=end
    def initialize(matrix)
      @d = false
      puts "Input:" if @d
      draw_matrix(matrix) if @d


      @mx = Array.new(matrix.size)
        .map.with_index{|_,i| [0] + matrix[i].clone}
      @mx.unshift Array.new(matrix[0].size+1,0)
      (1...@mx.size).each do |row|
        (1...@mx[0].size).each do |col|
          @mx[row][col] +=  @mx[row][col-1] 
        end
      end
      (1...@mx.size).each do |row|
        (1...@mx[0].size).each do |col|
          @mx[row][col] +=  @mx[row-1][col] 
        end
      end
      puts "Sum:" if @d
      draw_matrix(@mx) if @d
    end


=begin
    :type row1: Integer
    :type col1: Integer
    :type row2: Integer
    :type col2: Integer
    :rtype: Integer
=end
    def sum_region(row1, col1, row2, col2)
      r1,c1 = row1+1, col1+1
      r2,c2 = row2+1, col2+1
      p ["r1c1",r1,c1] if @d
      p ["r2c2",r2,c2] if @d
      a = @mx[r2][c2]
      l = @mx[r2][c1-1]
      u = @mx[r1-1][c2]
      ul = @mx[r1-1][c1-1]
      a - l - u + ul
    end
    def draw_matrix(mx)
      (0...mx.size).each do |i|
        row = ""
        (0...mx[0].size).each do |j|
          row += mx[i][j].to_s.rjust(4," ") + " "

        end
        puts row
      end
    end

end

# Your NumMatrix object will be instantiated and called as such:
# obj = NumMatrix.new(matrix)
# param_1 = obj.sum_region(row1, col1, row2, col2)
