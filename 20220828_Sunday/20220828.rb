# Leetcode: 1329. Sort the Matrix Diagonally. 
# https://leetcode.com/problems/sort-the-matrix-diagonally/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 173 ms, faster than 83.33% of Ruby online submissions for Sort the Matrix Diagonally.
# Memory Usage: 212 MB, less than 50.00% of Ruby online submissions for Sort the Matrix Diagonally.
# @param {Integer[][]} mat
# @return {Integer[][]}
def diagonal_sort(mat)
  # Code based on:
  # https://leetcode.com/problems/sort-the-matrix-diagonally/discuss/489749/JavaPython-Straight-Forward
  m, n = mat.size, mat[0].size
  d = {}
  (0...m).each do |i|
    (0...n).each do |j|
      d[i-j] ||= []
      d[i-j].push(mat[i][j])
    end
  end
  d.keys.each do |key|
    d[key] = d[key].sort_by{|x| -x}
  end
  (0...m).each do |i|
    (0...n).each do |j|
      mat[i][j] = d[i-j].pop
    end
  end
  mat
end
