# Leetcode: 515. Find Largest Value in Each Tree Row.
# https://leetcode.com/problems/find-largest-value-in-each-tree-row/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 77 ms, faster than 60.00% of Ruby online submissions for Find Largest
# Value in Each Tree Row.
# Memory Usage: 211.7 MB, less than 40.00% of Ruby online submissions for Find
# Largest Value in Each Tree Row.
# 2023.10.24 Daily Challenge.
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
# @return {Integer[]}
def largest_values(root)
  super_min = -(2**31) 
  return [] if ! root
  ans = []
  q = [root]
  while ! q.empty?
    max = super_min
    tmp_q = []
    q.each do |x|
      val = x.val
      max = val if max < val
      tmp_q.push(x.left) if x.left
      tmp_q.push(x.right) if x.right
    end
    ans.push(max)
    q = tmp_q
  end
  return ans
end
