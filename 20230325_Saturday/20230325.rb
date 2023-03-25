# Leetcode: 2316. Count Unreachable Pairs of Nodes in an Undirected Graph.
# https://leetcode.com/problems/count-unreachable-pairs-of-nodes-in-an-undirected-graph/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 403 ms, faster than 100.00% of Ruby online submissions for Count
# Unreachable Pairs of Nodes in an Undirected Graph.
# Memory Usage: 247.1 MB, less than 100.00% of Ruby online submissions for Count
# Unreachable Pairs of Nodes in an Undirected Graph.
# 2023.03.25 Daily Challenge.
# @param {Integer} n
# @param {Integer[][]} edges
# @return {Integer}
def count_pairs(n, edges)
  # Need to calulate combinations
  # of nodes from all components. 
  # Where first elment of a pairt is from one component.
  # And second element is from an anothe component.
  # #
  # Optimization. For current component there is no difference
  # other part of pair is in single component or in several ones.
  # So with `total` var it is possible to increase the answer inside the BFS.
  @adj = Array.new(n+1).map{ [] }
  @v = Array.new(n+1,false)
  @total = 0
  @ans = 0
  edges.each do |a,b|
    @adj[a].push(b)
    @adj[b].push(a)
  end
  (0...n).each do |i|
    next if @v[i]
    bfs(i)
  end
  return @ans
end

def bfs(i)
  return if @v[i]
  count = 0
  q = [i]
  @v[i] = true
  while !q.empty?
    x = q.shift
    count += 1
    @ans += @total
    @adj[x].each do |j|
      next if @v[j]
      @v[j] = true
      q.push(j)
    end
  end
  @total += count
end


