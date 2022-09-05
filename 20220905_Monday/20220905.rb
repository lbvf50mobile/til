# Leetcode: 429. N-ary Tree Level Order Traversal.
# https://leetcode.com/problems/n-ary-tree-level-order-traversal/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 206 ms, faster than 7.69% of Ruby online submissions for N-ary Tree Level Order Traversal.
# Memory Usage: 211.8 MB, less than 92.31% of Ruby online submissions for N-ary Tree Level Order Traversal.
#
# Definition for a Node.
# class Node
#     attr_accessor :val, :children
#     def initialize(val)
#         @val = val
#         @children = []
#     end
# end

# @param {Node} root
# @return {List[List[int]]}
def level_order(root)
  answer = []
  q = []
  q.push([root,0]) if root
  while ! q.empty?
    node, level = q.shift
    answer.push([]) if answer.size == level 
    answer.last.push(node.val)
    node.children.each do |x|
      q.push([x,level+1])
    end
  end
  return answer
end
