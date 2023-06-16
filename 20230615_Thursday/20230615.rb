# Leetcode: 1161. Maximum Level Sum of a Binary Tree.
# https://leetcode.com/problems/maximum-level-sum-of-a-binary-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 279 ms, faster than 7.14% of Ruby online submissions for Maximum
# Level Sum of a Binary Tree.
# Memory Usage: 214.6 MB, less than 100.00% of Ruby online submissions for
# Maximum Level Sum of a Binary Tree.
# 2023.06.16 Updated.
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
def max_level_sum(root)
  q = [[root,1]]
  max = root.val
  l = 1
  while !q.empty?
    sum = 0
    nq = []
    current_level = q[0].last 
    q.each do |node,lvl|
      sum += node.val 
      nq.push([node.left,lvl+1]) if node.left
      nq.push([node.right,lvl+1]) if node.right
    end
    q = nq
    if max < sum 
      max = sum
      l = current_level
    end
  end
  l
end
