# Leetcode: 99. Recover Binary Search Tree.
# https://leetcode.com/problems/recover-binary-search-tree/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 161 ms, faster than 50.00% of Ruby online submissions for Recover Binary Search Tree.
# Memory Usage: 211.3 MB, less than 14.29% of Ruby online submissions for Recover Binary Search Tree.
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
# @return {Void} Do not return anything, modify root in-place instead.
def recover_tree(root)
  return if root.nil?
  stack = [root]
  sorted = []
  # Fill sorted.
  while ! stack.empty?
    while stack.last.left
      stack.push stack.last.left
    end
    while ! stack.empty?
      x = stack.pop
      sorted.push x
      if x.right
        stack.push x.right
        break
      end
    end
  end
  i = 0
  while sorted[i].val < sorted[i+1].val
    i += 1
  end
  j = sorted.size - 1
  while sorted[j-1].val < sorted[j].val
    j -= 1
  end
  sorted[i].val, sorted[j].val =  sorted[j].val, sorted[i].val
end

