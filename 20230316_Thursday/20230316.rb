# Leetcode: 106. Construct Binary Tree from Inorder and Postorder Traversal.
# https://leetcode.com/problems/construct-binary-tree-from-inorder-and-postorder-traversal/
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
  p inorder
  p postorder
  # Based on:
  # https://leetcode.com/problems/construct-binary-tree-from-inorder-and-postorder-traversal/discuss/221681/A-better-Python-solution
  return nil if inorder.empty? || postorder.empty?
  root = TreeNode.new(postorder.pop())
  ii = inorder.find_index(root.val) # inorder index.
  root.left = build_tree(inorder[ii+1..],postorder)
  root.right = build_tree(inorder[0...ii],postorder)
  p [root.left, root.right]
  return root
end
