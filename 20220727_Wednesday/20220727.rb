# Leetcode: 114. Flatten Binary Tree to Linked List.
# https://leetcode.com/problems/flatten-binary-tree-to-linked-list/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 79 ms, faster than 95.65% of Ruby online submissions for Flatten Binary Tree to Linked List.
# Memory Usage: 211.1 MB, less than 65.22% of Ruby online submissions for Flatten Binary Tree to Linked List.
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
# @return {Void} Do not return anything, modify root in-place instead.
def flatten(root)
  last = root
  q = []
  q.push(last) if root
  while ! q.empty?
    el = q.pop
    r,l = el.right, el.left
    el.right, el.left = nil, nil
    if el != last
      last.right = el
      last.left = nil
      last = last.right
    end
    q.push(r) if r
    q.push(l) if l
  end
  return root
end
