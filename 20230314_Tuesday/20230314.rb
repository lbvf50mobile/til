# Leetcode: 129. Sum Root to Leaf Numbers.
# https://leetcode.com/problems/sum-root-to-leaf-numbers/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 87 ms, faster than 58.82% of Ruby online submissions for Sum Root to Leaf Numbers.
# Memory Usage: 210.9 MB, less than 70.59% of Ruby online submissions for Sum Root to Leaf Numbers.
# 2023.03.14 Daily Challenge.
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
def sum_numbers(root)
  return dfs(root).sum{|x| x.to_i}
end

def dfs(x)
  return [] if x.nil?
  return [x.val.to_s] if (!x.left) && (!x.right)
  tmp = dfs(x.left) + dfs(x.right)
  return tmp.map{|n| x.val.to_s + n}
end
