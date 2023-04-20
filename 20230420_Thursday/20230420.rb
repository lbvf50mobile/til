# Leetcode: 662. Maximum Width of Binary Tree.
# https://leetcode.com/problems/maximum-width-of-binary-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 93 ms, faster than 83.33% of Ruby online submissions for Maximum
# Width of Binary Tree.
# Memory Usage: 211.6 MB, less than 100.00% of Ruby online submissions for
# Maximum Width of Binary Tree.
# 2023.04.20 Daily Challenge.

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
def width_of_binary_tree(root)
  q = [[root,1]] # [el, number_in_a_level];
  max = 0
  while !q.empty?
    width = q.last.last - q.first.last + 1
    max = width if width > max
    nq = []
    q.each do |el,x| # x - number in a level.
      nq.push([el.left,2*x-1]) if el.left
      nq.push([el.right,2*x]) if el.right
    end
    q = nq
  end
  return max
end
