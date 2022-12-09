# Leetcode: 1026. Maximum Difference Between Node and Ancestor.
# https://leetcode.com/problems/maximum-difference-between-node-and-ancestor/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 164 ms, faster than 66.67% of Ruby online submissions for Maximum Difference Between Node and Ancestor.
# Memory Usage: 211.8 MB, less than 16.67% of Ruby online submissions for Maximum Difference Between Node and Ancestor.
# 2022.12.09 Daily Challenge.
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
def max_ancestor_diff(root)
  @diff = 0
  return 0 if ! root
  dfs(root, root.val, root.val)
  return @diff
end
def dfs(r,min,max)
  return if ! r
  min = r.val if r.val < min
  max = r.val if r.val > max
  tmp = (max - min).abs
  @diff = tmp if tmp > @diff
  dfs(r.left, min, max)
  dfs(r.right, min,max)
end
