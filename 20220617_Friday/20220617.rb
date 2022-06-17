# Leetcode: 968. Binary Tree Cameras.
# https://leetcode.com/problems/binary-tree-cameras/
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
# @return {Integer}
# Error.
def min_camera_cover(root)
  return 0 if root.nil?
  return 1 if root.left.nil? && root.right.nil?
  @a = [0,0]
  dfs(root,0)
  @a.min
end


def dfs(node,color)
  return if  node.nil?
  @a[color] += 1
  dfs(node.left, 1 == color ? 0 : 1)
  dfs(node.right, 1 == color ? 0 : 1)
end
