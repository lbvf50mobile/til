# Leetcode: 2265. Count Nodes Equal to Average of Subtree.
# https://leetcode.com/problems/count-nodes-equal-to-average-of-subtree
# fails: [0,0,0]
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
def average_of_subtree(root)
  @n_values = []
  @av = {}
  _, ans = dfs(root)
  return ans
end

# Return:
# Nodes
# Answer
def dfs(x)
  return [[],0] if !x
  n1, ans1 = dfs(x.left)
  n2, ans2 = dfs(x.right)
  nodes = [x.val] + n1 + n2
  av = nodes.sum / nodes.size
  ans = nodes.count{|n| n == av} + ans1 + ans2
  return [nodes, ans]
end
