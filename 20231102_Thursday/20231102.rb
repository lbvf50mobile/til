# Leetcode: 2265. Count Nodes Equal to Average of Subtree.
# https://leetcode.com/problems/count-nodes-equal-to-average-of-subtree
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
  ans = 0
  dfs(root)
  @n_values.each do |x|
    ans += 1 if @av[x]
  end
  return ans
end

# Return sum and number of nodes.
def dfs(x)
  return [0,0] if !x
  @n_values.push(x.val)
  sum1, num1 = dfs(x.left) 
  sum2, num2 = dfs(x.right)
  av = (x.val+sum1+sum2)/(num1+num2+1)
  @av[av] = true
  return [sum1+sum2+x.val, 1+num1+num2]
end
