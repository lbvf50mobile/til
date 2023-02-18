# Leetcode: 226. Invert Binary Tree.
# https://leetcode.com/problems/invert-binary-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 79 ms, faster than 81.20% of Ruby online submissions for Invert Binary Tree.
# Memory Usage: 211 MB, less than 87.22% of Ruby online submissions for Invert Binary Tree.
# 2023.02.18 Daily Challenge.
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
  return root if ! root
  root.left, root.right = root.right, root.left
  invert_tree(root.left); invert_tree(root.right)
  return root
end
