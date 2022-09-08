# Leetcode: 94. Binary Tree Inorder Traversal.
# https://leetcode.com/problems/binary-tree-inorder-traversal/
# Definition for a binary tree node.
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 124 ms, faster than 44.69% of Ruby online submissions for Binary Tree Inorder Traversal.
# Memory Usage: 210.9 MB, less than 77.65% of Ruby online submissions for Binary Tree Inorder Traversal.
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
# @return {Integer[]}
def inorder_traversal(root)
  return [] if ! root
  stack = [root]
  answer = []
  while ! stack.empty?
    if stack.last
      # Move left as long as possible.
      stack.push(stack.last.left)
    else
      # Remove nil from stack.
      stack.pop
      # exit if stack empty.
      break if stack.empty?
      # Write value to the answer.
      node = stack.pop
      answer.push(node.val)
      # Move right.
      stack.push(node.right)
    end
  end
  return answer
end
