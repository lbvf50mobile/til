# Leetcode: 199. Binary Tree Right Side View.
# https://leetcode.com/problems/binary-tree-right-side-view/
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
# @return {Integer[]}
# Error: [1,2]
def right_side_view(root)
  x = root
  answer = []
  while x
    answer.push(x.val)
    x = x.right
  end
  return answer
end
