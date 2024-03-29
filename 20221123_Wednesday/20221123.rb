# Leetcode: 36. Valid Sudoku.
# https://leetcode.com/problems/valid-sudoku/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 229 ms, faster than 18.46% of Ruby online submissions for Valid Sudoku.
# Memory Usage: 210.8 MB, less than 96.15% of Ruby online submissions for Valid Sudoku.
# 2022.11.23 Daily Challenge.
# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  @b = board
  # If one check fails.
  # Return false.

  # Check row.
  (0...9).each do |i|
    return false if ! row(i)
  end
  # Check column.
  (0...9).each do |j|
    return false if ! column(j)
  end
  # Check square.
  sq =[
    [0,0],
    [0,3],
    [0,6],
    [3,0],
    [3,3],
    [3,6],
    [6,0],
    [6,3],
    [6,6],
  ]
  sq.each do |i,j|
    return false if ! square(i,j)
  end
  # No fails.
  return true
end
def row(i)
  ans = []
  (0...9).each do |j|
    ans.push(@b[i][j]) if /[1-9]/ === @b[i][j]
  end
  ans == ans.uniq
end
def column(j)
  ans = []
  (0...9).each do |i|
    ans.push(@b[i][j]) if /[1-9]/ === @b[i][j]
  end
  ans == ans.uniq
end
def square(i,j)
  ans = []
  (0...3).each do |di|
    (0...3).each do |dj|
      ii,jj = i+di, j+dj
      ans.push(@b[ii][jj]) if /[1-9]/ === @b[ii][jj]
    end
  end
  ans == ans.uniq
end
