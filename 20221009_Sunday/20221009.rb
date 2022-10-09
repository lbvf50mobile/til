# Leetcode: 653. Two Sum IV - Input is a BST.
# https://leetcode.com/problems/two-sum-iv-input-is-a-bst/
# = = = = = = = = = = = = = = 
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = = 
# Runtime: 280 ms, faster than 45.16% of Ruby online submissions for Two Sum IV - Input is a BST.
# Memory Usage: 213.1 MB, less than 58.06% of Ruby online submissions for Two Sum IV - Input is a BST.
# Daily Challenge of 2022.10.09;
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
# @param {Integer} k
# @return {Boolean}
def find_target(root, k)
  @ans = false
  @k, @h = k, {}
  dfs(root)
  return @ans
end

def dfs(node)
  return true if @ans
  return false if node.nil?
  if @h[@k - node.val]
    @ans = true
    return
  end
  @h[node.val] = true
  dfs(node.left)
  dfs(node.right)
end
