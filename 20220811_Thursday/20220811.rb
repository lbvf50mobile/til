# Leetcode: 98. Validate Binary Search Tree.
# https://leetcode.com/problems/validate-binary-search-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 188 ms, faster than 11.11% of Ruby online submissions for Validate Binary Search Tree.
# Memory Usage: 212.3 MB, less than 12.12% of Ruby online submissions for Validate Binary Search Tree.
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
# @return {Boolean}
def is_valid_bst(root)
  q = []
  q.push([root,-Float::INFINITY, Float::INFINITY]) if root
  while ! q.empty?
    x,min,max = q.shift
    val = x.val
    return false if min >= val || max <= val
    if x.left
      q.push([x.left,min,x.val])
    end
    if x.right
      q.push([x.right,x.val,max])
    end
  end
  return true
end
