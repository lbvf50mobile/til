# Leetcode: 103. Binary Tree Zigzag Level Order Traversal.
# https://leetcode.com/problems/binary-tree-zigzag-level-order-traversal/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 87 ms, faster than 58.06% of Ruby online submissions for Binary Tree Zigzag Level Order Traversal.
# Memory Usage: 210.9 MB, less than 77.42% of Ruby online submissions for Binary Tree Zigzag Level Order Traversal.
# 2023.02.19 Daily Challenge.
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
# @return {Integer[][]}
def zigzag_level_order(root)
  return [] if ! root
  reverse = true
  q = [root]
  ans = []
  # Write current queue in answer.
  # Prepare new queue.
  while ! q.empty?
    reverse = ! reverse
    tmp = []
    newq = []
    q.each do |x|
      if x.left
        newq.push(x.left)
      end
      if x.right
        newq.push(x.right)
      end
      tmp.push(x.val)
    end
    tmp.reverse! if reverse
    q = newq
    ans.push(tmp)
  end
  return ans
end
