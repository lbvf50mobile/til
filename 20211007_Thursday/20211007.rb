# Leetcode: 79. Word Search.
# https://leetcode.com/problems/word-search/
# @param {Character[][]} board
# @param {String} word
# @return {Boolean}
# TLE:
# [["A","A","A","A","A","A"],["A","A","A","A","A","A"],["A","A","A","A","A","A"],["A","A","A","A","A","A"],["A","A","A","A","A","A"],["A","A","A","A","A","A"]]
# "AAAAAAAAAAAAAAB"
def exist(board, word)
  @b,@w = board, word
  @ans = false
  @unused = Array.new(@b.size).map{ Array.new(@b[0].size,true)}
  (0...@b.size).each do |i|
    (0...@b[0].size).each do |j|
      rec(i,j,0) if @b[i][j] == @w[0]
    end
  end
  @ans
end

def rec(i,j,k)
  return if @ans
  return if ! valid(i,j)
  return if ! @unused[i][j]
  return if  @b[i][j] != @w[k]
  if k == @w.size - 1
    @ans = true
    return
  end
  moves = [[i,j+1],[i,j-1],[i-1,j],[i+1,j]]
  @unused[i][j] = false
  moves.each do |(ni,nj)|
    rec(ni,nj,k+1)
  end
  @unused[i][j] = true
end

def valid(i,j)
  i.between?(0,@b.size-1) && j.between?(0,@b[0].size-1)
end
