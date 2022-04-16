# Leetcode: 538. Convert BST to Greater Tree.
# https://leetcode.com/problems/convert-bst-to-greater-tree/
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
def convert_bst(root)
    
end

def action(top_sum, node)
  return 0 if node.nil?
  right = action(top_sum, node.right)
  left = action(top_sum + right +  )
  
end
