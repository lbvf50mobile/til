# Leetcode: 104. Maximum Depth of Binary Tree. 
# https://leetcode.com/problems/maximum-depth-of-binary-tree/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 121 ms, faster than 32.97% of Ruby online submissions for Maximum Depth of Binary Tree.
# Memory Usage: 211.1 MB, less than 23.44% of Ruby online submissions for Maximum Depth of Binary Tree.
#
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
def max_depth(root)
  return 0 if root.nil?
  queue = [root]
  level = [1]
  answer = 0
  while ! queue.empty?
    x = queue.pop
    l = level.pop
    answer = l if l > answer
    if x.left
      queue.unshift(x.left)
      level.unshift(l+1)
    end
    if x.right
      queue.unshift(x.right)
      level.unshift(l+1)
    end
  end
  answer
end
