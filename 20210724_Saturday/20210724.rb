# Leetcode: 126. Word Ladder II.
# this code does not works because need back tracking.
# @param {String} begin_word
# @param {String} end_word
# @param {String[]} word_list
# @return {String[][]}
def find_ladders(begin_word, end_word, word_list)
  @curr_path = []
  @shortest_paths = []

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
  a.push(begin_word)

  # revove the root word wich is the first layer in the BFS.
  word_list.delete?(begin_word)

  isEnqueued = {}
  isEnqueued[begin_word] = true
  while !q.empty?
    visited = []
    q.size.times do
      curr_word = q.unshift
      # findNeighbor will have the adjacent words of the curr_word.
      neighbors = findNeighbors(curr_word, word_list)

    end
  end
end
