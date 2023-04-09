# Leetcode: 1857. Largest Color Value in a Directed Graph.
# https://leetcode.com/problems/largest-color-value-in-a-directed-graph/
# @param {String} colors
# @param {Integer[][]} edges
# @return {Integer}
def largest_path_value(colors, edges)
  # Based on:
  # https://leetcode.com/problems/largest-color-value-in-a-directed-graph/solution/
  n = color.size
  adj = Array.new(n).map{ []} 
  indegree = Array.new(n,0)
  edges.each do |a,b|
    adj[a].push(b)
    indegree[a] += 1
  end
  count = array.new(n).map{ []}
  q = []
  (0...n).each do |i|
    q.push(i) if 0 == indegree[i]
  end
  answer, nodesSeen = 0 ,0
  while !q.empty? 
    node = q.pop
    count[node][colors[node].ord - ?a] += 1
    answer = [answer,count[ndoe][colors[node].ord - ?a]].max
    nodesSeen += 1
  end
  return nodesSeen < n ? -1 : answer
end
