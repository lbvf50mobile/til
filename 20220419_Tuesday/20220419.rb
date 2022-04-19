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
def recover_tree(root)
  return if root.nil?
  @d = true
  puts "#{root.val}" if @d
  a,b = find_bigger(root.left, root.val), find_smaller(root.right, root.val)
  if a || b
    puts "Found for substitute." if @d
    x = a || b
    x.val, root.val = root.val, x.val
  else
    recover_tree(root.left)
    recover_tree(root.right)
  end
end

def find_bigger(node, val)
  return nil if node.nil?
  return node if val >= node.val
  if val < node.val
    return find_bigger(node.right, val)
  end
end
def find_smaller(node, val)
  return nil if node.nil?
  return node if val <= node.val
  if val > node.val
    return find_smaller(node.left, val)
  end
end
