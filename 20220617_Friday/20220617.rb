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
# [0,0,null,0,0]
# [0,0,null,0,null,0,null,null,0]
# [0,0,null,null,0,0,null,null,0,0]
# [0,null,0,null,0,0,0] Error.
def min_camera_cover(root)
  # Light that lights down and UP.
  # 1 - light
  # 0 - shadow no need camera. The light is enough.
  # -1 - total darknes, need new light, but light could be at child node.
  # -2 - second level of full darknes, put camera any way. 
  a = dfs(root,-2) # Set camera at root.
  b = dfs(root, -1) # set camera on second row.
  a < b ? a : b
end


def dfs(node,light)
  return 0 if  node.nil?
  camera = 0
  children = node.left || node.right
  if -2 == light 
    light = 1
    camera = 1 
  elsif -1 == light && (!children)
    light = 1
    camera = 1 
  end
  ans = camera
  ans += dfs(node.left, light-1)
  ans += dfs(node.right, light-1)
  return ans
end
