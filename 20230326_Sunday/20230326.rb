# Leetcode: 2360. Longest Cycle in a Graph.
# https://leetcode.com/problems/longest-cycle-in-a-graph/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 366 ms, faster than 100.00% of Ruby online submissions for Longest
# Cycle in a Graph.
# Memory Usage: 253.6 MB, less than 100.00% of Ruby online submissions for
# Longest Cycle in a Graph.
# 2023.03.26 Daily Challenge.
# @param {Integer[]} edges
# @return {Integer}
def longest_cycle(edges)
  # Based on:
  # https://leetcode.com/problems/longest-cycle-in-a-graph/solution/

  # 1. Initialize ann integer `answer = -1`. This would store the longest cycle
  # in the graph.
  @ans = -1
  # 2. Initialize another integer `n = edges.length` wich stores the number of
  # nodes in teh graph.
  @n = edges.size
  @e = edges
  # 3. Create a `visit` array of length `n` to keep trak of nodes that have been
  # visited.
  @v = Array.new(@n,false)
  # 4. Iterate through all of the nodes and for each node `i` check if it is
  # visited or not. If node `i` is not visited, create a hash map `dist` where
  # `dist.get(x)` would sotre the distance of node `x` from starting node `i`.
  # Beging the DFS traversal.
  (0...@n).each do |i|
    next if @v[i]
    @dst = {}
    @dst[i] = 1
    dfs(i)
  end
  # 5. Return answer.
  return @ans
end

def dfs(node)
  @v[node] = true
  nb = @e[node] # neighbor
  return if -1 == nb
  if !@v[nb]
    @dst[nb] = @dst[node] + 1
    dfs(nb)
  elsif @dst[nb]
    @ans = [@ans, @dst[node] - @dst[nb] + 1].max
  end
end
