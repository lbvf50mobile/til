# Leetcode: 1339. Maximum Product of Splitted Binary Tree.
# https://leetcode.com/problems/maximum-product-of-splitted-binary-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 258 ms, faster than 100.00% of Ruby online submissions for Maximum Product of Splitted Binary Tree.
# Memory Usage: 225.2 MB, less than 100.00% of Ruby online submissions for Maximum Product of Splitted Binary Tree.
# 2022.12.10 Daily Challenge.
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
def max_product(root)
  @total = 0
  @arr = []
  dfs(root)
  max = (@total-@arr[0]) * @arr[0]
  (1...@arr.size).each do |i|
    tmp = (@total - @arr[i]) * @arr[i]
    max = tmp if tmp > max
  end
  return max % ((10**9) + 7)
end
def dfs(r)
  return 0 if ! r
  @total += r.val
  a = dfs(r.left)
  @arr.push(a) if a > 0
  b = dfs(r.right)
  @arr.push(b) if b > 0
  return r.val + a + b
end
