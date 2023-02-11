# Leetcode: 1129. Shortest Path with Alternating Colors.
# https://leetcode.com/problems/shortest-path-with-alternating-colors/
# @param {Integer} n
# @param {Integer[][]} red_edges
# @param {Integer[][]} blue_edges
# @return {Integer[]}
def shortest_alternating_paths(n, red_edges, blue_edges)
  # Based on:
  # https://leetcode.com/problems/shortest-path-with-alternating-colors/solution/
  # 1. One.
  # Create an adjacency list adj that contains a list of pairs of integers 
  # such that adj[node] contains the neighbors of node in the form (neighbor, color) 
  # where neighbor is the neighbor of node and color denotes the edge color 
  # that connects node and neighbor. We use the number 0 for red and the number 1 for blue.
  adj = {}
  red_edges.each do |i,j|
    adj[i] ||= []
    adj[i].push([j,0]) # 0 - RED;
  end
  blue_edges.each do |i,j|
    adj[i] ||= []
    adj[i].push([j,1]) # 1 - BLUE;
  end
  # 2. Two.
  # Create a answer array with the value -1 where answer[i] 
  # is the answer for the i-th node.
  ans = Array.new(n,-1)
  # 3. Three.
  # Create a 2D visit array in which visit[node][color] 
  # indicates whether node has yet been 
  # visited using an edge of color.
  vst = Array.new(n).map{ [-1,-1]}


    
end
