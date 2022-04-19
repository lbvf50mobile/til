# Leetcode: 99. Recover Binary Search Tree.
# https://leetcode.com/problems/recover-binary-search-tree/
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
# @return {Void} Do not return anything, modify root in-place instead.
# This solution only work if error in root/child but not a the same level.
# [2,3,1] - does not works.
def recover_tree(root)
  return if root.nil?
  a,b = find_bigger(root.left, root.val), find_smaller(root.right, root.val)
  if a || b
    x = a || b
    x.val, root.val = root.val, x.val
  else
    recover_tree(root.left)
    recover_tree(root.right)
  end
end

def find_bigger(node, current_val)
  return nil if node.nil?
  # Need to find bigger than Current Val.
  return node if node.val >= current_val
  return find_bigger(node.right, current_val)
end
def find_smaller(node, current_val)
  return nil if node.nil?
  # Need to find smaller than Current Val.
  return node if node.val <= current_val
  return find_smaller(node.left, current_val)
end

