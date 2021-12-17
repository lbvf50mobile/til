# Leetcode: 221. Maximal Square.
# https://leetcode.com/problems/maximal-square/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 152 ms, faster than 18.75% of Ruby online submissions for Maximal Square.
# Memory Usage: 216 MB, less than 6.25% of Ruby online submissions for Maximal Square.
# @param {Character[][]} matrix
# @return {Integer}
def maximal_square(matrix)
  # Add new column of zeros.
  @matrix = matrix.map{|x| [0] + x.map(&:to_i)}
  # Add row of zeros.
  @matrix.unshift(Array.new(@matrix[0].size,0))
  # Find maximum square of ones by Pull DP.
  # https://www.youtube.com/watch?v=YBSt1jYwVfU&list=PLl0KD3g-oDOGJUdmhFk19LaPgrfmAGQfo
  max_sum = 0
  (1...@matrix.size).each do |i|
    (1...@matrix[0].size).each do |j|
      next if 0 == @matrix[i][j]
      friends = [@matrix[i-1][j],@matrix[i][j-1],@matrix[i-1][j-1]]
      @matrix[i][j] = friends.min + 1
      max_sum = @matrix[i][j] if max_sum < @matrix[i][j]
    end
  end
  max_sum * max_sum
end
