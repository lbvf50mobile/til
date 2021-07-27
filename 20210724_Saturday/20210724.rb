# Leetcode: 126. Word Ladder II.
# this code does not works because need back tracking.
# @param {String} begin_word
# @param {String} end_word
# @param {String[]} word_list
# @return {String[][]}
def find_ladders(begin_word, end_word, word_list)
  @curr_path = []
  @shortest_paths = []
  @adj_list = {}

  # Coping the words into the set of efficient deletion in BFS.
  copied_word_list = Set.new(word_list)
  # Build the DAG using BFS.
  bfs(begin_word, end_word, copied_word_list)

  # Every path will start from the beging_word.
  @curr_path.push(begin_word)
  # Treverse the DAG to find all the paths between begin_word and end_word.
  backtrack(begin_word,end_word)

  return @shortest_paths
end

def bfs(begin_word, end_word, word_list)
  q = []
  q.push(begin_word)

  # remove the root word wich is the first layer in the BFS.
  word_list.delete?(begin_word)

  isEnqueued = {}
  isEnqueued[begin_word] = true
  while !q.empty?
    visited = []
    q.size.times do
      curr_word = q.shift
      # findNeighbor will have the adjacent words of the curr_word.
      neighbors = findNeighbors(curr_word, word_list)
      neighbors.each do |word|
        visited.push[word]
        @adj_list[curr_word] ||= []
        @adj_list[curr_word].push(word)
        if isEnqueued[word].nil?
          q.push(word)
          isEnqueued[word] = true
        end
      end # neightbors
    end # q.size
    # removing the words of the previous layer.
    visited.each{|wrd| word_list.delete?(wrd)}
  end # while
end
