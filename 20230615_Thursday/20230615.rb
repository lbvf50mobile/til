# Leetcode: 1161. Maximum Level Sum of a Binary Tree.
# https://leetcode.com/problems/maximum-level-sum-of-a-binary-tree/
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
def max_level_sum(root)
  h = {}
  q = [[root,1]]
  while !q.empty?
    x,l = q.shift
    h[l] ||= 0
    h[l] += x.val
    q.push([x.left,l+1]) if x.left
    q.push([x.right,l+1]) if x.right
  end
  return h.to_a.max{|x| x.last}.first 
end
