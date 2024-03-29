# Leetcode: 872. Leaf-Similar Trees.
# https://leetcode.com/problems/leaf-similar-trees/
# = = = = = = = = = = = = = =
# Accetped.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 169 ms, faster than 7.69% of Ruby online submissions for Leaf-Similar Trees.
# Memory Usage: 211 MB, less than 84.62% of Ruby online submissions for Leaf-Similar Trees.
# 2022.12.08 Daily Challenge.
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Boolean}
def leaf_similar(root1, root2)
  a,b = [],[]
  get_leafs(root1,a) 
  get_leafs(root2,b)
  a == b
end
def get_leafs(r,arr)
  stack = []
  while r || (!stack.empty?)
    if r
      stack.push(r)
      r = r.left
    else
      r = stack.pop
      if r.left.nil? && r.right.nil?
        arr.push(r.val)
      end
      r = r.right
    end
  end
end
