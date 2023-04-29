# Leetcode: 1697. Checking Existence of Edge Length Limited Paths.
# https://leetcode.com/problems/checking-existence-of-edge-length-limited-paths/
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
    if @r[g1] > @r[g2]
      @g[g2] = g1
    elsif @r[g1] < @r[g2]
      @g[g1] = g2
    else
      @g[g1] = g2
      @r[g2] ||= 0
      @r[g2] += 1
    end
    def con(n1,n2)
      g1 = find(n1)
      g2 = find(n2)
      g1 == g2
    end
  end
end
def distance_limited_paths_exist(n, edge_list, queries)
  uf = Uf.new(n)
  qc = queries.size
  ans = Array.new(qc,false)

  qwi = []
  qc.times do |i|
    qwi[i] = queries[i]
    qwi[i].push(i)
  end
  
    
end
