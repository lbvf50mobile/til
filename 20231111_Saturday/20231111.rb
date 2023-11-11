# Leetcode: 2643. Design Graph With Shortest Path Calculator.
# https://leetcode.com/problems/design-graph-with-shortest-path-calculator/
# = = = = = = = = = = = = = =
# Correct.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# TLE.
# 2023.11.11 Daily Challenge.

class Graph
  # Based on:
  # https://leetcode.com/problems/design-graph-with-shortest-path-calculator/solution/

=begin
    :type n: Integer
    :type edges: Integer[][]
=end
    def initialize(n, edges)
      @al = Array.new(n){ Array.new()}
      # fn - from node.
      # tn - to node.
      # ct - cost!
      edges.each do |fn, tn, ct|
        @al[fn].push([tn,ct])
      end
    end


=begin
    :type edge: Integer[]
    :rtype: Void
=end
    def add_edge(edge)
      # fn - from node.
      # tn - to node.
      # ct - cost!
      fn, tn, ct = edge
      @al[fn].push([tn,ct])
    end


=begin
    :type node1: Integer
    :type node2: Integer
    :rtype: Integer
=end
    def shortest_path(node1, node2)
      n = @al.size
      pq = [[0,node1]]
      cost_for_node = Array.new(n,Float::INFINITY)
      cost_for_node[node1] = 0
      while ! pq.empty?
        pq.sort! # <- hack. Because no normal PQ.
        # cc - current cost.
        # cn - current node.
        cc, cn = pq.shift
        next if cc > cost_for_node[cn]
        return cc if cn == node2
        @al[cn].each do |n,c|
          nc = cc + c
          if nc < cost_for_node[n]
            cost_for_node[n] = nc
            pq.push([nc, n])
          end
        end
      end
      return -1
    end


end

# Your Graph object will be instantiated and called as such:
# obj = Graph.new(n, edges)
# obj.add_edge(edge)
# param_2 = obj.shortest_path(node1, node2)
