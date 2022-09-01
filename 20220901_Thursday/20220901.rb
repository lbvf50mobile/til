# Leetcode: 1448. Count Good Nodes in Binary Tree.
# https://leetcode.com/problems/count-good-nodes-in-binary-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 521 ms, faster than 12.50% of Ruby online submissions for Count Good Nodes in Binary Tree.
# Memory Usage: 217 MB, less than 95.83% of Ruby online submissions for Count Good Nodes in Binary Tree.
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
# @return {Integer}
def good_nodes(root)
  @d = false
  answer = 0
  q = [[root,-Float::INFINITY]]
  while ! q.empty?
    el,max = q.shift
    p [?-, el.val, max] if @d
    if el.val >= max # Here was an error.
      p [el.val, "Good"] if @d
      answer += 1 
    else
      p [el.val, "Bad"] if @d
    end
    max = el.val if max < el.val
    q.push([el.left,max]) if el.left
    q.push([el.right,max]) if el.right
  end
  answer
end
