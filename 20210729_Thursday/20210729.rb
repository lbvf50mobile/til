# Leetcode: 542. 01 Matrix.
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/612/week-5-july-29th-july-31st/3831/
# https://leetcode.com/problems/01-matrix/
# Accepted.
# Thanks God!
# @param {Integer[][]} mat
# @return {Integer[][]}
def update_matrix(mat)
  @mx = mat
  @maximum = mat.size * mat[0].size * 2
  @dp = Array.new(mat.size).map{ Array.new(mat[0].size,@maximum)}
  top_bottom()
  bottom_top()
  @dp
end

def top_bottom()
  (0...@mx.size).each do |i|
    (0...@mx[0].size).each do |j|
      if 0 == @mx[i][j]
        @dp[i][j] = 0
        next
      else
        min = @dp[i][j]
        min = @dp[i-1][j]+1 if i-1 >= 0 && @dp[i-1][j]+1 < min
        min = @dp[i][j-1]+1 if j-1 >=0 && @dp[i][j-1]+1 < min
        @dp[i][j] = min
      end
    end
  end
end

def bottom_top()
  (0...@mx.size).reverse_each do |i|
    (0...@mx[0].size).reverse_each do |j|
      if 0 == @mx[i][j]
        @dp[i][j] = 0
        next
      else
        min = @dp[i][j]
        min = @dp[i+1][j]+1 if i+1 < @mx.size && @dp[i+1][j]+1 < min
        min = @dp[i][j+1]+1 if j+1 < @mx[0].size && @dp[i][j+1]+1 < min
        @dp[i][j] = min 
      end
    end
  end
end
