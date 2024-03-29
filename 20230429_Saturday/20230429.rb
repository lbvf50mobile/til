# Leetcode: 1697. Checking Existence of Edge Length Limited Paths.
# https://leetcode.com/problems/checking-existence-of-edge-length-limited-paths/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 726 ms, faster than 100.00% of Ruby online submissions for Checking
# Existence of Edge Length Limited Paths.
# Memory Usage: 247.5 MB, less than 100.00% of Ruby online submissions for
# Checking Existence of Edge Length Limited Paths.
# 2023.04.29 Daily Challenge.
# @param {Integer} n
# @param {Integer[][]} edge_list
# @param {Integer[][]} queries
# @return {Boolean[]}
class Uf
  def initialize(size)
    @g = Array.new(size).map.with_index{|x,i| i} 
    @r = []
  end
  def find(n)
    if @g[n] != n
      @g[n] = find(@g[n])
    end
    @g[n]
  end
  def join(n1,n2)
    g1 = find(n1)
    g2 = find(n2)
    return if g1 == g2
    @r[g1] ||= 0
    @r[g2] ||= 0
    if @r[g1] > @r[g2]
      @g[g2] = g1
    elsif @r[g1] < @r[g2]
      @g[g1] = g2
    else
      @g[g1] = g2
      @r[g2] ||= 0
      @r[g2] += 1
    end
  end
  def con(n1,n2)
    g1 = find(n1)
    g2 = find(n2)
    g1 == g2
  end
end
def distance_limited_paths_exist(n, edge_list, queries)
  # Based on:
  # https://leetcode.com/problems/checking-existence-of-edge-length-limited-paths/solution/
  uf = Uf.new(n)
  qc = queries.size
  ans = Array.new(qc,false)

  # Store original indices with all queries.
  qwi = [] # Queries with index.
  qc.times do |i|
    qwi[i] = queries[i]
    qwi[i].push(i)
  end

  # Sort all edges in increasing order of their edge weights.
  edge_list.sort!{|a,b| a[2] - b[2]}
  # Sort all queries in increasing order of the limit of edge allowed.
  qwi.sort!{|a,b| a[2] - b[2]}

  # ei - edges index.
  ei = 0

  # qoi - Query original index.
  # l - limit.
  # Iterate on each query one by one.
  qwi.each do |pe,q,l,qoi|
    # We can attach edges with satisfy the limit given by the query.
    while ei < edge_list.size && edge_list[ei][2] < l
      n1 = edge_list[ei][0]
      n2 = edge_list[ei][1]
      uf.join(n1,n2)
      ei += 1
    end

    # If both nodes belong to the same component, it means we can reach them.
    ans[qoi] = uf.con(pe,q)
  end

  return ans
end
