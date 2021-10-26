# Leetcode: 226. Invert Binary Tree.
# https://leetcode.com/problems/invert-binary-tree/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 52 ms, faster than 84.21% of Ruby online submissions for Invert Binary Tree.
# Memory Usage: 209.8 MB, less than 90.23% of Ruby online submissions for Invert Binary Tree.
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
def invert_tree(root)
  return root if root.nil?
  root.left, root.right = root.right, root.left
  invert_tree(root.left)
  invert_tree(root.right)
  root
end
