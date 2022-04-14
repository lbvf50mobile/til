# Leetcode: 700. Search in a Binary Search Tree.
# https://leetcode.com/problems/search-in-a-binary-search-tree/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 116 ms, faster than 75.86% of Ruby online submissions for Search in a Binary Search Tree.
# Memory Usage: 212.3 MB, less than 39.66% of Ruby online submissions for Search in a Binary Search Tree.
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
# @param {Integer} val
# @return {TreeNode}
def search_bst(root, val)
  @d = true
  tmp = root
  while tmp
    return tmp if val == tmp.val
    tmp = val < tmp.val ? tmp.left : tmp.right
  end
  return tmp
end
