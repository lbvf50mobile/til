# Leetcode: 1372. Longest ZigZag Path in a Binary Tree.
# https://leetcode.com/problems/longest-zigzag-path-in-a-binary-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 310 ms, faster than 100.00% of Ruby online submissions for Longest
# ZigZag Path in a Binary Tree.
# Memory Usage: 222.1 MB, less than 100.00% of Ruby online submissions for
# Longest ZigZag Path in a Binary Tree.
# 2023.04.19 Daily Challenge.
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
def longest_zig_zag(root)
  # Based on Leetcode's solution.
  @max = 0
  dfs(root,false,0)
  dfs(root,true,0)
  return @max
end
def dfs(x,lft,n)
  return if !x
  @max = [@max,n].max
  if lft
    dfs(x.left,false,n+1)
    dfs(x.right,true,1)
  else
    dfs(x.left,false,1)
    dfs(x.right,true,n+1)
  end
end


