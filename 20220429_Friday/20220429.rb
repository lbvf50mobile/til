# Leetcode: 785. Is Graph Bipartite?
# https://leetcode.com/problems/is-graph-bipartite/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 86 ms, faster than 100.00% of Ruby online submissions for Is Graph Bipartite?.
# Memory Usage: 213.2 MB, less than 89.47% of Ruby online submissions for Is Graph Bipartite?.
# @param {Integer[][]} graph
# @return {Boolean}
def is_bipartite(graph)
  # Solution based on:
  # https://leetcode.com/problems/is-graph-bipartite/discuss/119514/Python-3-BFS-DFS-solutions
  colored = {}
  (0...graph.size).each do |i|
    next if colored[i]
    colored[i] = 1
    q = [i]
    while ! q.empty?
      cur = q.shift
      graph[cur].each do |nv|
        if colored[nv].nil?
          colored[nv] = - colored[cur]
          q.push nv
        elsif colored[nv] == colored[cur]
          return false
        end
      end
    end
  end
  return true
end
