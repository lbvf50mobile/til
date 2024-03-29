# Leetcode: 783. Minimum Distance Between BST Nodes.
# https://leetcode.com/problems/minimum-distance-between-bst-nodes/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 97 ms, faster than 14.29% of Ruby online submissions for Minimum Distance Between BST Nodes.
# Memory Usage: 211.1 MB, less than 85.71% of Ruby online submissions for Minimum Distance Between BST Nodes.
# 2023.02.17 Daily Challenge.
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
def min_diff_in_bst(root)
  # In order traversal.
  srtd = [] # sorted array.
  q = [root]
  while ! q.empty?
    x = q.last
    if x.nil?
      q.pop
      y = q.pop
      if y
        srtd.push(y.val)
        q.push(y.right)
      end
    else
      q.push(x.left)
    end
  end
  min = srtd[1] - srtd[0]
  (2...srtd.size).each do |i|
    tmp = srtd[i] - srtd[i-1]
    min = tmp if tmp < min
  end
  return min
end
