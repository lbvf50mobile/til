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

def bfs(graph, start)
  # dictionary that maps each node in graph to the shortest disnance away from start.
  dist = {} 
  dist[start] = 0
  parents = {}
  parents[start] = nil

  (0...graph.size).each do |i|
    next if start == i
    dist[i] = Float::INFINITY
    parents[i] = []
  end

  queue = [start]
  while ! queue.empty?
    node = queue.pop
    graph[node].each do |neighbor|
      if Float::INFINITY == dist[neighbor]
        dist[neighbor] = dist[node] + 1
        parents[neighbor].push(node)
        queue.unshift(neighbor)
      else
        if dist[node] + 1 == dist[neighbor]
          parents[neighbor].push(node)
        elsif dist[node] + 1 < dist[neighbor]
          dist[neighbor] = dist[node] + 1
          parents[neighbor].clear()
          parents[neighbor].push(node)
        end
      end
    end
  end
  return parents
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

