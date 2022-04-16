# Leetcode: 538. Convert BST to Greater Tree.
# https://leetcode.com/problems/convert-bst-to-greater-tree/
# = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = =
# Runtime: 126 ms, faster than 66.67% of Ruby online submissions for Convert BST to Greater Tree.
# Memory Usage: 214.8 MB, less than 16.67% of Ruby online submissions for Convert BST to Greater Tree.
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
  return root if root.nil?
  stack = [root]
  sum = 0
  while ! stack.empty?
    # Move right as far as possible.
    while stack.last.right
      stack.push(stack.last.right)
    end
    # When there is no way rigth.
    # Try to find way left.
    while ! stack.empty?
      # Because of pop. Can't got rigth same way.
      node = stack.pop  
      sum += node.val
      node.val = sum
      if node.left
        stack.push(node.left)
        break
      end
    end
  end
  root
end

