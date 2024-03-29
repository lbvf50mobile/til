# Leetcode: 785. Is Graph Bipartite?
# https://leetcode.com/problems/is-graph-bipartite/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 103 ms, faster than 100.00% of Ruby online submissions for Is Graph
# Bipartite?.
# Memory Usage: 213.7 MB, less than 100.00% of Ruby online submissions for Is
# Graph Bipartite?.
# 2023.05.19 Daily Challenge.
# @param {Integer[][]} graph
# @return {Boolean}
def is_bipartite(graph)
  # Based on:
  # https://leetcode.com/problems/is-graph-bipartite/discuss/1484708/Python-or-BFS-Graph-Coloring-or-Simple-Solution
  colors = Array.new(graph.size)
  (0...graph.size).each do |i|
    next if colors[i]
    colors[i] = 1
    q = [i]
    while ! q.empty?
      cn = q.shift # Current node.
      graph[cn].each do |node|
        if ! colors[node]
          colors[node] = 1 - colors[cn]
          q.push(node)
        elsif colors[node] ==  colors[cn]
          return false
        end # if/else Loop.
      end # Children Loop.
    end # BFS Loop.
  end # Iterate over elements.
  return true
end
