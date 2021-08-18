# Leetcode: 1448. Count Good Nodes in Binary Tree.
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/615/week-3-august-15th-august-21st/3899/
# https://leetcode.com/problems/count-good-nodes-in-binary-tree/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
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
def good_nodes(root)
  @ans = 0
  return @ans if root.nil?
  max = root.val
  @ans += 1
  dfs(root.left,max) if root.left
  dfs(root.right,max) if root.right
  return @ans
end

def dfs(x,max)
  @ans +=1 if max <= x.val
  max = x.val if x.val > max
  dfs(x.left,max) if x.left
  dfs(x.right,max) if x.right
end
