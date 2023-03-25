# Leetcode: 2316. Count Unreachable Pairs of Nodes in an Undirected Graph.
# https://leetcode.com/problems/count-unreachable-pairs-of-nodes-in-an-undirected-graph/
# @param {Integer} n
# @param {Integer[][]} edges
# @return {Integer}
# TLE.
def count_pairs(n, edges)
  # Need to calulate combinations
  # of nodes from all components. 
  # Where first elment of a pairt is from one component.
  # And second element is from an anothe component.
  @adj = Array.new(n+1).map{ [] }
  @v = Array.new(n+1,false)
  @comps = [] # Number of nodes in a component.
  edges.each do |a,b|
    @adj[a].push(b)
    @adj[b].push(a)
  end
  (0...n).each do |i|
    next if @v[i]
    bfs(i)
  end
  ans = 0
  (0...@comps.size).each do |i|
    (i+1...@comps.size).each do |j|
      ans += @comps[i]*@comps[j]
    end
  end
  return ans
end

def bfs(i)
  return if @v[i]
  count = 0
  q = [i]
  @v[i] = true
  while !q.empty?
    x = q.shift
    count += 1
    @adj[x].each do |j|
      next if @v[j]
      @v[j] = true
      q.push(j)
    end
  end
  @comps.push(count)
end


