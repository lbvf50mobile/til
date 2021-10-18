# Leetcode: 993. Cousins in Binary Tree.
# https://leetcode.com/problems/cousins-in-binary-tree/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 103 ms, faster than 8.33% of Ruby online submissions for Cousins in Binary Tree.
# Memory Usage: 209.7 MB, less than 100.00% of Ruby online submissions for Cousins in Binary Tree.
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @param {Integer} x
# @param {Integer} y
# @return {Boolean}
def is_cousins(root, x, y)
  return false if ! root # No x and no y.
  @h = {} # Create hash.
  @h[x] = false # Create x key.
  @h[y] = false # Create y key.
  @x,@y = x,y # Make x and y reachable from dfs.
  dfs(root,0,nil) # Call dfs for a root, it's parent is nil.

  # Ok. Both keys exists.
  # And. Has the same level.
  # And. Had different parents.
  (@h[@x] && @h[@y]) && (@h[@x][0] == @h[@y][0]) && (@h[@x][1] != @h[@y][1])
end


def dfs(node, level, parent)
  return if @h[@x] && @h[@y] # Nothing to search.
  if false == @h[node.val] # Found a key.
    @h[node.val] = [level,parent]
    return # No need to search among children. Children is not a cousin.
  end
  dfs(node.left, level+1, node) if node.left
  dfs(node.right, level+1, node) if node.right
end
