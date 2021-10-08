# Leetcode: 79. Word Search.
# https://leetcode.com/problems/word-search/
# @param {Character[][]} board
# @param {String} word
# @return {Boolean}
# TLE.
def exist(board, word)
  @b,@w = board, word

  (0...@b.size).each do |i|
    (0...@b[0].size).each do |j|
      next if @b[i][j] != @w[0]
      return true if rec(i,j,0) 
    end
  end
  return false
end

def rec(i,j,k)
  return false if !(i.between?(0,@b.size-1) && j.between?(0,@b[0].size-1))
  return false if @w[k] != @b[i][j]
  return true if k == @w.size - 1
  @b[i][j] = ?#
  return true if rec(i+1,j,k+1) || rec(i-1,j,k+1) || rec(i,j+1,k+1) || rec(i,j-1,k+1)
  @b[i][j] = @w[k]
  return false
end

