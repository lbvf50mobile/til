# Leetcode: 133. Clone Graph.
# https://leetcode.com/problems/clone-graph/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 107 ms, faster than 56.70% of Ruby online submissions for Clone Graph.
# Memory Usage: 211.1 MB, less than 40.21% of Ruby online submissions for Clone Graph.
#
# Definition for a Node.
# class Node
#     attr_accessor :val, :neighbors
#     def initialize(val = 0, neighbors = nil)
#		  @val = val
#		  neighbors = [] if neighbors.nil?
#         @neighbors = neighbors
#     end
# end

# @param {Node} node
# @return {Node}
def cloneGraph(node)
  @created = {}
  dfs(node)
end

def dfs(node)
  return node if ! node
  return @created[node] if @created[node]
  ans = Node.new(node.val)
  @created[node] = ans
  ans.neighbors = node.neighbors.map{|x| dfs(x)}
  return ans
end
