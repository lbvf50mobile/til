# Leetcode: 576. Out of Boundary Paths.
# https://leetcode.com/problems/out-of-boundary-paths/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 737 ms, faster than 100.00% of Ruby online submissions for Out of Boundary Paths.
# Memory Usage: 212.7 MB, less than 100.00% of Ruby online submissions for Out of Boundary Paths.
# @param {Integer} m
# @param {Integer} n
# @param {Integer} max_move
# @param {Integer} start_row
# @param {Integer} start_column
# @return {Integer}
def find_paths(m, n, max_move, start_row, start_column)
  @d = false
  puts "m=#{m},n=#{n}, max_move=#{max_move}, (i,j) = #{start_row}, #{start_column}" if @d
  @m,@n,@max_move = m, n, max_move
  x = (10**9) + 7
  dp = Array.new(@m) # Here was an error. Used @m.size istead of @m.
    .map{ Array.new(@n)
    .map{ Array.new(@max_move+1,0)}}
  answer = 0
  dp[start_row][start_column][0] = 1
  (0...@max_move).each do |k|
    (0...@m).each do |i|
      (0...@n).each do |j|
        val = dp[i][j][k]
        [[i+1,j],[i,j+1],[i-1,j],[i,j-1]].each do |ii,jj|
          if in_bounds(ii,jj)
            print "dp[#{ii}][#{jj}][#{k+1}] " if @d
            dp[ii][jj][k+1] = (dp[ii][jj][k+1] + val) % x
            puts "#{dp[ii][jj][k+1]}" if @d
          else
            answer = (answer + val) % x
          end
        end
      end
    end
  end
  return answer
end

def in_bounds(i,j)
  i.between?(0,@m-1) && j.between?(0,@n-1)
end
