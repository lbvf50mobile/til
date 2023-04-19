# Leetcode: 1372. Longest ZigZag Path in a Binary Tree.
# https://leetcode.com/problems/longest-zigzag-path-in-a-binary-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 279 ms, faster than 100.00% of Ruby online submissions for Longest
# ZigZag Path in a Binary Tree.
# Memory Usage: 215.3 MB, less than 100.00% of Ruby online submissions for
# Longest ZigZag Path in a Binary Tree.
# 2023.04.19 Daily Challenge.
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
def longest_zig_zag(root)
  # Based on @longluo's solution.
  # https://leetcode.com/problems/longest-zigzag-path-in-a-binary-tree/solution/1868016
  # From DFS to BFS.
  @max = 0
  q = [[root,0,0]]
  while !q.empty?
    x,l,r = q.shift
    next if !x
    @max = l if l > @max
    @max = r if r > @max
    q.push([x.left,r+1,0]) if x.left
    q.push([x.right,0,l+1]) if x.right
  end
  return @max
end


