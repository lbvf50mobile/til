# Leetcode: 938. Range Sum of BST.
# https://leetcode.com/problems/range-sum-of-bst/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 232 ms, faster than 92.16% of Ruby online submissions for Range Sum of BST.
# Memory Usage: 216.6 MB, less than 66.67% of Ruby online submissions for Range Sum of BST.
# 2022.12.07 Daily Challenge.
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
  return 0 if ! root
  x = root.val
  if x.between?(low,high)
    return x + range_sum_bst(root.left,low,high) + range_sum_bst(root.right, low, high)
  elsif x < low
    return range_sum_bst(root.right, low, high)
  elsif high < x
    return range_sum_bst(root.left, low, high)
  else
    raise "Unknown position."
  end
end

