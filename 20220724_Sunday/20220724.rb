# Leetcode: 240. Search a 2D Matrix II.
# https://leetcode.com/problems/search-a-2d-matrix-ii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 621 ms, faster than 25.00% of Ruby online submissions for Search a 2D Matrix II.
# Memory Usage: 219.5 MB, less than 12.50% of Ruby online submissions for Search a 2D Matrix II.
# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  @d = false
  @target = target
  matrix.select{|x| target.between?(x.first, x.last)}
    .any?{|x| check_row(x)}
end
def check_row(row)
  value = row.bsearch{|x| x >= @target}
  return false unless value
  p [value, @target] if @d
  value == @target
end
