# Leetcode: 1161. Maximum Level Sum of a Binary Tree.
# https://leetcode.com/problems/maximum-level-sum-of-a-binary-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 306 ms, faster than 7.14% of Ruby online submissions for Maximum
# Level Sum of a Binary Tree.
# Memory Usage: 214.1 MB, less than 100.00% of Ruby online submissions for
# Maximum Level Sum of a Binary Tree.
# 2023.06.15 Daily Challenge.
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
  h = {}
  q = [[root,1]]
  while !q.empty?
    x,l = q.shift
    h[l] ||= 0
    h[l] += x.val
   q.push([x.left,l+1]) if x.left
   q.push([x.right,l+1]) if x.right
  end
  max = h.values.max
  h.to_a.select{|x| x.last == h.values.max}.sort_by(&:first).first.first 
end
