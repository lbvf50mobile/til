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
def min_camera_cover(root)
  # Light that lights down.
  # TODO: Need to fix. Need add light up.
  # 1 - light
  # 0 - shadow
  # -1 - total darknes, need new light.
  a = dfs(root,-1) # Set camera at root.
  b = dfs(root, 0) # set camera on second row.
  a < b ? a : b
end


def dfs(node,light)
  # TODO: Need to check do it possible to light with by a child!
  return 0 if  node.nil?
  camera = 0
  if light < 0
    light = 1
    camera = 1
  end
  ans = camera
  ans += dfs(node.left, light-1)
  ans += dfs(node.right, light-1)
  return ans
end
