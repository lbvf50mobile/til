# Leetcode: 79. Word Search.
# https://leetcode.com/problems/word-search/
# @param {Character[][]} board
# @param {String} word
# @return {Boolean}
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
  return true if k == @w.size - 1
  tmp = @b[i][j]
  @b[i][j] = ?#
  if  valid(i+1,j)  && @b[i+1][j] == @w[k+1]
    return true if rec(i+1,j,k+1)
  end
  if  valid(i-1,j)  && @b[i-1][j] == @w[k+1]
    return true if rec(i-1,j,k+1)
  end
  if  valid(i,j+1)  && @b[i][j+1] == @w[k+1]
    return true if rec(i,j+1,k+1)
  end
  if  valid(i,j-1)  && @b[i][j-1] == @w[k+1]
    return true if rec(i,j-1,k+1)
  end
  @b[i][j] = tmp
  return false
end

def valid(i,j)
  i.between?(0,@b.size-1) && j.between?(0,@b[0].size-1)
end
