# Leetcode: 814. Binary Tree Pruning.
# https://leetcode.com/problems/binary-tree-pruning/
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
# @return {TreeNode}
def prune_tree(root)
  dfs(root)
  root
end

def dfs(x)
  return false if !x
  l = dfs(x.left)
  r = dfs(x.right)
  ans = l || r
  x.left = nil if ! l
  x.right = nil if ! r
  return true if 1 == x.val
  ans
end
