# Leetcode: 701. Insert into a Binary Search Tree.
# https://leetcode.com/problems/insert-into-a-binary-search-tree/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 156 ms, faster than 39.13% of Ruby online submissions for Insert into a Binary Search Tree.
# Memory Usage: 213.3 MB, less than 82.61% of Ruby online submissions for Insert into a Binary Search Tree.
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
def insert_into_bst(root, val)
  node = TreeNode.new(val)
  return node if root.nil?
  tmp = root
  nxt = nil
  while tmp
    if tmp.val < val
      nxt = tmp.right
      if nxt.nil?
        tmp.right = node
        return root
      end
    elsif tmp.val > val
      nxt = tmp.left
      if nxt.nil?
        tmp.left = node
        return root
      end
    else
      raise "#{val} already in the tree."
    end
    tmp = nxt
  end
  raise "Cannot insert a value #{val}."
end
