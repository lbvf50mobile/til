# Leetcode: 102. Binary Tree Level Order Traversal.
# https://leetcode.com/problems/binary-tree-level-order-traversal/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 202 ms, faster than 5.06% of Ruby online submissions for Binary Tree Level Order Traversal.
# Memory Usage: 211.1 MB, less than 47.75% of Ruby online submissions for Binary Tree Level Order Traversal.
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
# @return {Integer[][]}
def level_order(root)
  @answer = []
  dfs(root, 0)
  @answer
end

def dfs(node, level)
  return if node.nil?
  @answer.push([]) if @answer.size == level
  @answer[level].push(node.val)
  dfs(node.left, level+1)
  dfs(node.right, level+1)
end
