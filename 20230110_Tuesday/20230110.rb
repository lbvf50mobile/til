# Leetcode: 100. Same Tree.
# https://leetcode.com/problems/same-tree/
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} pe
# @param {TreeNode} q
# @return {Boolean}
# fails:
# [10,5,15]
# [10,5,null,null,15]
def is_same_tree(pe, q)
  return true if pe.nil? && q.nil?
  return false if pe.nil? || q.nil?
  qu1,qu2 = [[pe,0]],[[q,0]]
  while (!qu1.empty?)&&(!qu2.empty?)
    x1,s1 = qu1.shift 
    x2,s2 = qu2.shift
    return false if s1 != s2
    return false if x1.val != x2.val
    qu1.push([x1.left,0]) if x1.left
    qu1.push([x1.right,1]) if x1.right
    qu2.push([x2.left,0]) if x2.left
    qu2.push([x2.right,1]) if x2.right
  end
  return false if (!qu1.empty?) || (!qu2.empty?)
  return true
end
