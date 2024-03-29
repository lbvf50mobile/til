# Leetcode: 104. Maximum Depth of Binary Tree.
# https://leetcode.com/problems/maximum-depth-of-binary-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 82 ms, faster than 89.14% of Ruby online submissions for Maximum Depth of Binary Tree.
# Memory Usage: 211.4 MB, less than 37.14% of Ruby online submissions for Maximum Depth of Binary Tree.
# 2023.02.16 Daily Challenge.
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
def max_depth(root)
  @max = 0
  dfs(root,1)
  return @max
end

def dfs(x,deep)
  return if !x
  @max = deep if deep > @max
  dfs(x.left,deep+1)
  dfs(x.right,deep+1)
end
