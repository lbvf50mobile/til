# Leetcode: 814. Binary Tree Pruning.
# https://leetcode.com/problems/binary-tree-pruning/
# Definition for a binary tree node.
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 160 ms, faster than 14.29% of Ruby online submissions for Binary Tree Pruning.
# Memory Usage: 211.1 MB, less than 28.57% of Ruby online submissions for Binary Tree Pruning.
#
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
  return nil if ! dfs(root)
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
