# Leetcode: 1008. Construct Binary Search Tree from Preorder Traversal.
# https://leetcode.com/problems/construct-binary-search-tree-from-preorder-traversal/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 105 ms, faster than 7.14% of Ruby online submissions for Construct Binary Search Tree from Preorder Traversal.
# Memory Usage: 210.1 MB, less than 71.43% of Ruby online submissions for Construct Binary Search Tree from Preorder Traversal.
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
# @return {TreeNode}
def bst_from_preorder(preorder)
  @head = TreeNode.new(preorder[0])
  (1...preorder.size).each do |i|
    insert(preorder[i])
  end
  @head
end

def insert(value)
  node = @head
  while true
    step = value < node.val ? node.left : node.right
    if step
      node = step
    elsif value < node.val
      node.left = TreeNode.new(value)
      return
    else
      node.right = TreeNode.new(value)
      return
    end
  end
end
