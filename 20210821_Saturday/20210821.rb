# Leetcode: 36. Valid Sudoku.
# https://leetcode.com/problems/valid-sudoku/
#
# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  require 'set'
  n = 9
  # Use hast set to record the status.
  rows = Array.new(n).map{ Set.new()}
  cols = Array.new(n).map{ Set.new()}
  boxes = Array.new(n).map{ Set.new()}
  (0...n).each do |r|
    (0...n).each do |c|
      val = board[r][c]
      next if ?. == val
      return false if rows[r].include?(val)
      rows[r].add(val)
      return false if cols[c].include?(val)
      cols[r].add(val)
      # Check the box.
      idx = (r/3)*3 + (c/3)
      return false if boxes[idx].include?(val)
      boxes[idx].add(val)
    end
  end
  true
end
