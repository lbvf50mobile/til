# Leetcode: 623. Add One Row to Tree.
# https://leetcode.com/problems/add-one-row-to-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 224 ms, faster than 100.00% of Ruby online submissions for Add One Row to Tree.
# Memory Usage: 212.5 MB, less than 100.00% of Ruby online submissions for Add One Row to Tree.
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
# @param {Integer} depth
# @return {TreeNode}
def add_one_row(root, val, depth)
  if 1 == depth
    el = TreeNode.new(val)
    el.left = root
    return el
  end
  root.left = rec(root.left, val, depth-1, ?l)
  root.right = rec(root.right, val, depth-1, ?r)
  return root
end

def rec(x,val,d,side)
  return x if d < 1
  if 1 == d
    el = TreeNode.new(val)
    el.left = x if ?l == side
    el.right = x if ?r == side
    return el
  end
  return nil if x.nil?
  x.left = rec(x.left, val, d-1, ?l)
  x.right = rec(x.right, val, d-1, ?r)
  return x
end
