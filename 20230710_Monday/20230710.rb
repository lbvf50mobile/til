# Leetcode: 111. Minimum Depth of Binary Tree.
# https://leetcode.com/problems/minimum-depth-of-binary-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 329 ms, faster than 92.86% of Ruby online submissions for Minimum
# Depth of Binary Tree.
# Memory Usage: 228.4 MB, less than 71.43% of Ruby online submissions for
# Minimum Depth of Binary Tree.
# 2023.07.10 Daily Challenge.
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
def min_depth(root)
  return 0 if root.nil?
  ans = 0
  q = [root]
  while ! q.empty?
    ans += 1
    nq = []
    q.size.times do
      x = q.pop
      both = x.left.nil? && x.right.nil?
      return ans if  both
      nq.push x.left if x.left
      nq.push x.right if x.right
    end
    q = nq
  end
  return ans
end
