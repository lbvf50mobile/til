# Leetcode: 669. Trim a Binary Search Tree.
# https://leetcode.com/problems/trim-a-binary-search-tree/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 104 ms, faster than 100.00% of Ruby online submissions for Trim a Binary Search Tree.
# Memory Usage: 212.6 MB, less than 33.33% of Ruby online submissions for Trim a Binary Search Tree.
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
# @param {Integer} low
# @param {Integer} high
# @return {TreeNode}
def trim_bst(root, low, high)
  @l,@h = low, high
  return root if root.nil?
  # p [?s,root.val]
  root = find_root(root)
  return root if root.nil?
  # p [?e, root.val]
  root.left = trim_bst(root.left, low, high)
  root.right = trim_bst(root.right, low, high)
  root # Very important line!
end

def find_root(root)
  return root if root.nil?
  return find_root(root.right) if root.val < @l
  return find_root(root.left) if root.val > @h
  # p [?o,root.val]
  root
end
