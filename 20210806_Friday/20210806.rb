# Leetcode: 429. N-ary Tree Level Order Traversal.
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/613/week-1-august-1st-august-7th/3871/
# https://leetcode.com/problems/n-ary-tree-level-order-traversal/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
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
# def level_order(root) # This leeds to error: Line 64: undefined method `levelOrder' for main:Object.
def levelOrder(root)
  ans = []
  return ans if root.nil?
  q = [[root,0]]
  while ! q.empty?
    node,level = q.shift
    ans.push([]) if ans.size == level
    ans[level].push(node.val)
    node.children.each do |el|
      q.push([el,level+1])
    end
  end
  return ans
end
