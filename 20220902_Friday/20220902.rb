# Leetcode: 637. Average of Levels in Binary Tree.
# https://leetcode.com/problems/average-of-levels-in-binary-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 121 ms, faster than 77.78% of Ruby online submissions for Average of Levels in Binary Tree.
# Memory Usage: 212.5 MB, less than 33.33% of Ruby online submissions for Average of Levels in Binary Tree.
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
# @return {Float[]}
def average_of_levels(root)
  sum = []
  counter = []
  q = [[root,0]]
  while ! q.empty?
    el, level = q.shift
    if sum.size == level
      sum.push 0
      counter.push 0
    end
    sum[level] += el.val
    counter[level] += 1
    q.push([el.left, level+1]) if el.left
    q.push([el.right, level+1]) if el.right
  end
  sum.zip(counter).map{|a,b| a.fdiv(b)}
end
