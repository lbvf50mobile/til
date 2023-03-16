# Leetcode: 106. Construct Binary Tree from Inorder and Postorder Traversal.
# https://leetcode.com/problems/construct-binary-tree-from-inorder-and-postorder-traversal/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 115 ms, faster than 75.00% of Ruby online submissions for Construct Binary Tree from Inorder and Postorder Traversal.
# Memory Usage: 211.8 MB, less than 75.00% of Ruby online submissions for Construct Binary Tree from Inorder and Postorder Traversal.
# 2023.03.16 Daily Challenge.
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} inorder
# @param {Integer[]} postorder
# @return {TreeNode}
def build_tree(inorder, postorder)
  # Based on:
  # https://leetcode.com/problems/construct-binary-tree-from-inorder-and-postorder-traversal/discuss/221681/A-better-Python-solution
  return nil if inorder.empty? || postorder.empty?
  root = TreeNode.new(postorder.pop())
  ii = inorder.find_index(root.val) # inorder index.
  # Bug was here. Order of calls is important.
  root.right = build_tree(inorder[ii+1..-1],postorder)
  root.left = build_tree(inorder[0...ii],postorder)
  return root
end
