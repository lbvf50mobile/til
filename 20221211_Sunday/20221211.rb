# Leetcode: 124. Binary Tree Maximum Path Sum.
# https://leetcode.com/problems/binary-tree-maximum-path-sum/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 251 ms, faster than 32.79% of Ruby online submissions for Binary Tree Maximum Path Sum.
# Memory Usage: 213.5 MB, less than 65.57% of Ruby online submissions for Binary Tree Maximum Path Sum.
# 2022.12.11 Daily Challenge.
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
def max_path_sum(root)
  # Based on:
  # https://leetcode.com/problems/binary-tree-maximum-path-sum/solution/
  @max = root.val
  postorder(root)
  return @max
end
def postorder(r)
  return 0 if !r
  # Left node.
  ln = [postorder(r.left),0].max
  # Right node.
  rn = [postorder(r.right),0].max
  x = ln + rn + r.val
  @max = x if x > @max
  return [ln+r.val,rn+r.val].max
end
