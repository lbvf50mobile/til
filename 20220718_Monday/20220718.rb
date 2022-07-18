# Leetcode: 1074. Number of Submatrices That Sum to Target.
# https://leetcode.com/problems/number-of-submatrices-that-sum-to-target/
# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Integer}
# TLE.
def num_submatrix_sum_target(matrix, target)
  @t = target
  @m = matrix.clone.map{|x| [0] + x.clone} # Add zero column.
  @m.unshift( Array.new(@m[0].size,0)) # Add zero row.
  # Make prefix array for each row.
  w = @m.size
  h = @m[0].size
  (1...w).each do |i|
    (1...h).each do |j|
      @m[i][j] += @m[i][j-1] # Take data from the left.
    end
  end
  # Make 2d prefix array. Use columns.
  (1...h).each do |j|
    (1...w).each do |i|
      @m[i][j] += @m[i-1][j] # Take data from the top.
    end
  end
  answer = 0
  (1...w).each do |i0|
    (1...h).each do |j0|
      (i0...w).each do |i1|
        (j0...h).each do |j1|
          answer += 1 if @t == sum(i0,j0,i1,j1)
        end
      end
    end
  end
  answer
end

# i0,j0 - top left.
# i1,j1 - bottom right.
def sum(i0,j0, i1, j1) 
  @m[i1][j1] - @m[i0-1][j1] - @m[i1][j0-1] + @m[i0-1][j0-1] 
end
