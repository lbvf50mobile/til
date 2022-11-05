# Leetcode: 212. Word Search II.
# https://leetcode.com/problems/word-search-ii/
# @param {Character[][]} board
# @param {String[]} words
# @return {String[]}
def find_words(board, words)
  @d = true
  @tire_head = [Hash.new,nil] # Pointers, word.
  @answer = []
  @b = board
  words.each do |w|
    write_in_trie(w)
  end
  @used = set_used
  @path = [] if @d
  @answer_path = [] if @d
  (0...board.size).each do |i|
    (0...board[0].size).each do |j|
      backtracking(i,j,@tire_head)
    end
  end
  p @answer_path if @d
  return @answer
end

def backtracking(i,j,trie)
  @used[i][j] = true
  @path.push(@b[i][j] + "(#{i},#{j})") if @d
  @answer.push(trie[1]) if trie[1]
  @answer_path.push(@path.join) if trie[1] if @d
  [[i+1,j],[i-1,j],[i,j+1],[i,j-1]].each do |ni,nj|
    next if !(ni.between?(0,@b.size-1) && nj.between?(0,@b[0].size-1))
    next if @used[ni][nj]
    next if ! trie[0][@b[ni][nj]]
    backtracking(ni,nj,trie[0][@b[ni][nj]])
  end
  @used[i][j] = false
  @path.pop if @d
end

def set_used
  Array.new(@b.size).map{ Array.new(@b[0].size,false)}
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
