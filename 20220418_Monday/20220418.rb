# Leetcode: 230. Kth Smallest Element in a BST.
# https://leetcode.com/problems/kth-smallest-element-in-a-bst/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 113 ms, faster than 56.94% of Ruby online submissions for Kth Smallest Element in a BST.
# Memory Usage: 212.4 MB, less than 79.17% of Ruby online submissions for Kth Smallest Element in a BST.
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
# @param {Integer} k
# @return {Integer}
def kth_smallest(root, k)
  stack = [root]
  counter = 1
  while ! stack.empty?
    while stack.last.left
      stack.push stack.last.left
    end
    while ! stack.empty?
      x = stack.pop
      return x.val if k == counter
      counter += 1
      if x.right
        stack.push x.right
        break
      end
    end
  end
  raise "Cannot find an answer."
end
