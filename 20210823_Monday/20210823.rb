# Leetcode: 653. Two Sum IV - Input is a BST.
# https://leetcode.com/problems/two-sum-iv-input-is-a-bst/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/616/week-4-august-22nd-august-28th/3908/
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
# @param {Integer} k
# @return {Boolean}
def find_target(root, k)
  require 'set'
  q = [root]
  values = Set.new
  while ! q.empty?
    x = q.pop
    return true if values.include?(k - x.val)
    values.add(x.val)
    q.unshift(x.left) if x.left
    q.unshift(x.right) if x.right
  end
  return false
end
