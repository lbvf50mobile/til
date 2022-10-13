# Leetcode: 237. Delete Node in a Linked List.
# https://leetcode.com/problems/delete-node-in-a-linked-list/
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} node
# @return {Void} Do not return anything, modify node in-place instead.
def delete_node(node)
  current = node
  previous = nil
  while current.next
    current.val = current.next.val
    previous = current
    current = current.next
  end
  previous.next = nil
end
