# Leetcode: 79. Word Search.
# https://leetcode.com/problems/word-search/
# @param {Character[][]} board
# @param {String} word
# @return {Boolean}
# TLE.
def exist(board, word)
  @b, @w = board, word
  @m,@n = @b.size, @b[0].size
  return false if @m*@n < @w.size
  a = @w.chars.tally
  b = @b.flatten.tally
  a.keys.each do |c|
    return false if !b[c]
    return false if a[c] > b[c]
  end
  @used = Array.new(@b.size).map{ Array.new(@b[0].size,false)}
  (0...@b.size).each do |i|
    (0...@b[0].size).each do |j|
      return true if bck(i,j,0)
    end
  end
  return false
end

# k - index in the word.
def bck(i,j,k)
  return true if k == @w.size
  rm,cm = @b.size-1, @b[0].size-1 # row max, col max.
  return false if !(i.between?(0,rm) && j.between?(0,cm))
  return false if @b[i][j] != @w[k]
  return false if @used[i][j]
  @used[i][j] = true
  [
    [i+1,j],
    [i-1,j],
    [i,j+1],
    [i,j-1],
  ].each do |ii,jj|
    return true if bck(ii,jj,k+1)
  end
  @used[i][j] = false
  return false
end

