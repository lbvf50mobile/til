# Leetcode: 897. Increasing Order Search Tree.
# https://leetcode.com/problems/increasing-order-search-tree/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 107 ms, faster than 42.86% of Ruby online submissions for Increasing Order Search Tree.
# Memory Usage: 211.1 MB, less than 28.57% of Ruby online submissions for Increasing Order Search Tree.
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
# @return {TreeNode}
def increasing_bst(root)
  return root if root.nil?
  @d = false
  stack = [root]
  ans = []
  new_root = nil
  last = nil
  while ! stack.empty?
    # Move left as far as possible.
    while stack.last.left
      stack.push(stack.last.left)
    end
    # Seeking for way right.
    while ! stack.empty?
      need_to_break = false
      x = stack.pop
      if x.right
        stack.push(x.right) 
        need_to_break = true
      end
      x.left = nil
      x.right = nil
      ans.push x.val
      if new_root.nil?
        new_root = x
        last = x
      else
        last.right = x
        last = last.right
      end
      break if need_to_break
    end
  end
  puts ans.inspect if @d
  new_root
end
