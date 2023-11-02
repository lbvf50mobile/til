# Leetcode: 2265. Count Nodes Equal to Average of Subtree.
# https://leetcode.com/problems/count-nodes-equal-to-average-of-subtree
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 72 ms, faster than 100.00% of Ruby online submissions for Count Nodes
# Equal to Average of Subtree.
# Memory Usage: 211.1 MB, less than 100.00% of Ruby online submissions for Count
# Nodes Equal to Average of Subtree.
# 2023.11.02 Daily Challenge.
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
  @ans = 0
  dfs(root)
  return @ans
end

# Return: [sum, total]
def dfs(x)
  return [0,0] if !x
  s1, t1 = dfs(x.left)
  s2, t2 = dfs(x.right)
  sum = s1+s2+x.val
  total = t1+t2+1
  av = sum/total
  @ans += 1 if av == x.val
  return [sum, total] 
end
