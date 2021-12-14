# Leetcode: 938. Range Sum of BST.
# https://leetcode.com/problems/range-sum-of-bst/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 218 ms, faster than 26.00% of Ruby online submissions for Range Sum of BST.
# Memory Usage: 214.7 MB, less than 54.00% of Ruby online submissions for Range Sum of BST.
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
# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def range_sum_bst(root, low, high)
  return 0 if root.nil?
  global_sum = 0
  queue = [root]
  while ! queue.empty?
    el = queue.pop()
    global_sum += el.val if el.val.between?(low,high)
    queue.unshift(el.right) if el.right &&  el.val <= high
    queue.unshift(el.left) if el.left && el.val >= low
  end
  global_sum
end
