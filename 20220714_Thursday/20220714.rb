# Leetcode: 105. Construct Binary Tree from Preorder and Inorder Traversal.
# https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 152 ms, faster than 54.72% of Ruby online submissions for Construct Binary Tree from Preorder and Inorder Traversal.
# Memory Usage: 212 MB, less than 83.02% of Ruby online submissions for Construct Binary Tree from Preorder and Inorder Traversal.
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} preorder
# @param {Integer[]} inorder
# @return {TreeNode}
def build_tree(preorder, inorder)
  # Based on solution:
  # https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/solution/
  @preorder = preorder
  @preorder_index = 0
  @inorder_index_map = {}
  inorder.each_with_index do |v,i|
    @inorder_index_map[v] = i
  end
  

  return array_to_tree(0, preorder.size - 1)
end

def array_to_tree(left, right)
  return nil if left > right
  root_value = @preorder[@preorder_index]
  root = TreeNode.new(root_value)
  @preorder_index += 1
  root.left = array_to_tree(left, @inorder_index_map[root_value] - 1)
  root.right = array_to_tree(@inorder_index_map[root_value] + 1, right)
  return root
end
