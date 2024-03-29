# Leetcode: 501. Find Mode in Binary Search Tree.
# https://leetcode.com/problems/find-mode-in-binary-search-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 86 ms, faster than 36.36% of Ruby online submissions for Find Mode in
# Binary Search Tree.
# Memory Usage: 213.8 MB, less than 9.09% of Ruby online submissions for Find
# Mode in Binary Search Tree.
# 2023.11.01 Daily Challenge.
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
def find_mode(root)
  @c = {}
  dfs(root)
  return [] if @c.empty?
  max = @c.values.max
  @c.select{|i,x| x == max}.map(&:first)
end

def dfs(x)
  return if !x
  @c[x.val] ||= 0
  @c[x.val] += 1
  dfs(x.left)
  dfs(x.right)
end
