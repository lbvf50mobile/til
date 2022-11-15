# Leetcode: 222. Count Complete Tree Nodes.
# https://leetcode.com/problems/count-complete-tree-nodes/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 274 ms, faster than 22.22% of Ruby online submissions for Count Complete Tree Nodes.
# Memory Usage: 213.8 MB, less than 25.93% of Ruby online submissions for Count Complete Tree Nodes.
# 2022.11.15 Daily Challenge.
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
def count_nodes(root)
  return 0 if root.nil?
  q = [root]
  counter = 0
  while ! q.empty?
    counter += 1
    el = q.shift
    q.push(el.left) if el.left
    q.push(el.right) if el.right
  end
  counter
end
