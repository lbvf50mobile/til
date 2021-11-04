# Leetcode: 404. Sum of Left Leaves.
# https://leetcode.com/problems/sum-of-left-leaves/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 64 ms, faster than 68.18% of Ruby online submissions for Sum of Left Leaves.
# Memory Usage: 210.3 MB, less than 18.18% of Ruby online submissions for Sum of Left Leaves.
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
def sum_of_left_leaves(root)
  @ans = 0
  dfs(root,false)
  @ans
end

def dfs(node,is_left)
  return if node.nil?
  if is_left && !(node.left || node.right)
    @ans += node.val
  end
  dfs(node.left, true)
  dfs(node.right, false)
end
