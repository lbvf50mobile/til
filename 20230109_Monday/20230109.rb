# Leetcode: 144. Binary Tree Preorder Traversal.
# https://leetcode.com/problems/binary-tree-preorder-traversal/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 87 ms, faster than 75.68% of Ruby online submissions for Binary Tree Preorder Traversal.
# Memory Usage: 210.8 MB, less than 100.00% of Ruby online submissions for Binary Tree Preorder Traversal.
# 2023.01.09 Daily Challenge.
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
# @return {Integer[]}
def preorder_traversal(root)
  return [] if root.nil?
  q = [root]
  answer = []
  while ! q.empty?
    x = q.pop()
    answer.push(x.val)
    q.push(x.right) if x.right
    q.push(x.left) if x.left
  end
  return answer
end
