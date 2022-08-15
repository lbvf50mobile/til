# Leetcode: 126. Word Ladder II.
# https://leetcode.com/problems/word-ladder-ii/
# @param {String} begin_word
# @param {String} end_word
# @param {String[]} word_list
# @return {String[][]}
def find_ladders(begin_word, end_word, word_list)
  # Based on:
  # https://leetcode.com/problems/word-ladder-ii/discuss/2422074/Python-Accepted-BFS-Solution-with-Clean-Commented-Code
  word_list.push(begin_word) if ! word_list.include?(begin_word)
  return [] if ! word_list.include?(end_word)
  index_end = word_list.index(end_word)
  index_begin = word_list.index(begin_word)
  graph = convert(word_list)
  parents = bfs(graph, index_begin)
  path = []
  curr_path = [end_word]
  find_path(path, curr_path, index_end, parents, word_list)
  return path
end

def convert(words)
  edges = []
  graph = Array.new(words.size).map{ Array.new }
  (0...words.size).each do |i|
    (i+1...words.size).each do |j|
      edges.push([i,j]) if differ(words[i],words[j])
    end
  end
  edges.each do |(i,j)|
    graph[i].push(j)
    graph[j].push(i)
  end
  return graph
end

def differ(str1, str2)
  diff = 0
  str1.size.times do |i|
    diff += 1 if str1[i] != str2[i]
  end
  return 1 == diff
end

