# Leetcode: 109. Convert Sorted List to Binary Search Tree.
# https://leetcode.com/problems/convert-sorted-list-to-binary-search-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 324 ms, faster than 100.00% of Ruby online submissions for Convert Sorted List to Binary Search Tree.
# Memory Usage: 280.8 MB, less than 20.00% of Ruby online submissions for Convert Sorted List to Binary Search Tree.
# 2023.03.11 Daily Challenge.
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {ListNode} head
# @return {TreeNode}
def sorted_list_to_bst(head)
  return nil if ! head
  @a = []
  while head
    @a.push(head.val)
    head = head.next
  end
  return rec(0, @a.size-1)
end
def rec(l,r)
  return nil if l > r
  return nil if l < 0
  return nil if r >= @a.size
  m = l + (r-l)/2
  node = TreeNode.new(@a[m])
  node.left = rec(l,m-1)
  node.right = rec(m+1,r)
  return node
end
