# Leetcode: 199. Binary Tree Right Side View.
# https://leetcode.com/problems/binary-tree-right-side-view/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 145 ms, faster than 17.39% of Ruby online submissions for Binary Tree Right Side View.
# Memory Usage: 211.1 MB, less than 54.35% of Ruby online submissions for Binary Tree Right Side View.
#
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
def right_side_view(root)
  x = root
  @answer = []
  dfs(root, 0)
  return @answer
end

def dfs(node, level)
  return if node.nil?
  if @answer.size == level
    @answer.push(node.val)
  else
    @answer[level] = node.val
  end
  dfs(node.left, level + 1)
  dfs(node.right, level + 1)
end
