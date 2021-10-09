# Leetcode: 212. Word Search II.
# https://leetcode.com/problems/word-search-ii/
# @param {Character[][]} board
# @param {String[]} words
# @return {String[]}
def find_words(board, words)
  @b = board
  ans = []
  hash = create_alphabet_hash(words)
  (0...@b.size).each do |row|
    (0...@b[0].size).each do |col|
      c = @b[row][col]
      if hash[c]
        new_arr = []
        hash[c].each do |w|
          if rec(row,col,0,w)
            ans.push(w)
          else
            new_arr.push(w)
          end
        end
        # End Hash Loop.
        hash[c] = new_arr
      end
    end
  end
  return ans
end

def create_alphabet_hash(words)
  ans = {}
  words.each do |wrd|
    ans[wrd[0]] ||= []
    ans[wrd[0]].push(wrd)
  end
  ans
end

def rec(row,col,pnt,w)
  return true if pnt == w.size
  return false if row < 0 || col < 0 || row >= @b.size || col >= @b[0].size
  return false if @b[row][col] != w[pnt]
  @b[row][col] = ?-
  ans = rec(row+1,col,pnt+1,w) || rec(row-1, col, pnt+1,w) || rec(row,col+1,pnt+1,w) || rec(row,col-1,pnt+1,w)
  @b[row][col] = w[pnt]
  return ans
end
