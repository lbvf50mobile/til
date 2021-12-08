# Leetcode: 563. Binary Tree Tilt.
# https://leetcode.com/problems/binary-tree-tilt/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 143 ms, faster than 20.00% of Ruby online submissions for Binary Tree Tilt.
# Memory Usage: 210.7 MB, less than 60.00% of Ruby online submissions for Binary Tree Tilt.
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
def find_tilt(root)
  @sum = 0
  dfs(root)
  @sum
end
def dfs(root)
  return 0 if root.nil?
  left,right = dfs(root.left), dfs(root.right)
  @sum += (right - left).abs
  root.val + right + left
end
