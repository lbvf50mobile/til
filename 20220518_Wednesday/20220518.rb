# Leetcode: 1192. Critical Connections in a Network.
# https://leetcode.com/problems/critical-connections-in-a-network/
# @param {Integer} n
# @param {Integer[][]} connections
# @return {Integer[][]}
def critical_connections(n, connections)
  @n = n
  @d = true
  # Based on: 
  # https://leetcode.com/problems/critical-connections-in-a-network/discuss/465923/Simple-Intuitive-Explanation-Beats-99-in-theory-as-well-as-compute-PYTHON
  # Node is index, neighbors are in the list.
  @graph = Array.new(n).map{ Array.new}

  # Build the graph.
  connections.each do |(n1,n2)|
    @graph[n1].push(n2)
    @graph[n2].push(n1)
  end

  # min_discovery_time of nodes at respective indices from start node.
  # 1. default to max wich is the depth of continuous graph.
  @lows = [n] * n

  # Critical edges.
  @critical = []

  dfs(n-1, 0, -1)
  return @critical
end


# args: node, node discovery_time in dfs, parent of this node.
def dfs(node, discovery_time, parent)
  puts node if @d
  # if the low is not yet discovered for this onde
  if @n == @lows[node]
    # 2. default it tot the depth or discovery time of this node.
    @lows = discovery_time
    # iterate over neighbors.
    @graph[node].each do |neighbor|
      # all neightbos except parent.
      next if neighbor == parent
      exptected = discovery_time + 1
      actual = dfs(neighbor, exptected, node)
      if actual >= exptected
        @critical.push([node,neighbor])
      end
      @lows[node] = actual if actual < @lows[node]
    end
  end
  return @lows[node]
end
