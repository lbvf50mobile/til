# Leetcode: 235. Lowest Common Ancestor of a Binary Search Tree.
# https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 189 ms, faster than 21.21% of Ruby online submissions for Lowest Common Ancestor of a Binary Search Tree.
# Memory Usage: 212.5 MB, less than 56.36% of Ruby online submissions for Lowest Common Ancestor of a Binary Search Tree.
#
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
  return root if root.nil?
  return p if root == p
  return q if root == q

  l = lowest_common_ancestor(root.left, p, q)
  r = lowest_common_ancestor(root.right, p, q)
  return root if l && r
  return l if l
  return r 
end
