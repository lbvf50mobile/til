# Leetcode: 543. Diameter of Binary Tree.
# https://leetcode.com/problems/diameter-of-binary-tree/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 72 ms, faster than 52.94% of Ruby online submissions for Diameter of Binary Tree.
# Memory Usage: 210.7 MB, less than 45.10% of Ruby online submissions for Diameter of Binary Tree.
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
def diameter_of_binary_tree(root)
  @max = 0
  rec(root)
  return @max
end

def rec(node)
  return 0 if node.nil?
  left, right = rec(node.left), rec(node.right)
  deepest = left
  deepest = right if right > left
  local_max = left + right
  @max = local_max if @max < local_max
  return deepest + 1 # 1 for the current node.
end
