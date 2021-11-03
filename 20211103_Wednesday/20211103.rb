# Leetcode: 129. Sum Root to Leaf Numbers.
# https://leetcode.com/problems/sum-root-to-leaf-numbers/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 48 ms, faster than 88.24% of Ruby online submissions for Sum Root to Leaf Numbers.
# Memory Usage: 209.9 MB, less than 35.29% of Ruby online submissions for Sum Root to Leaf Numbers.
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
  @sum = 0
  dfs(root,0)
  @sum
end

def dfs(node, num)
  return if node.nil?
  num = num*10 + node.val
  if node.left.nil? && node.right.nil?
    @sum += num
  end
  dfs(node.left, num)
  dfs(node.right, num)
end
