# Leetcode: 212. Word Search II.
# https://leetcode.com/problems/word-search-ii/
# @param {Character[][]} board
# @param {String[]} words
# @return {String[]}
def find_words(board, words)
  @tire_head = [Hash.new,nil] # Pointers, word.
  @answer = []
  @b = board
  words.each do |w|
    write_in_trie(w)
  end
  @used = {}
  (0...board.size).each do |i|
    (0...board[0].size).each do |j|
      @used = {}
      @used[i.to_s+j.to_s] = true
      backtracking(i,j,@tire_head)
    end
  end
  return @answer
end

def write_in_trie(w)
  cur = @tire_head
  w.chars.each do |c|
    if cur[0][c]
      cur = cur[0][c]
    else
      cur[0][c] = [Hash.new, nil]
      cur = cur[0][c]
    end
  end
  cur[1] = w
end
