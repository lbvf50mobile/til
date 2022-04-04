# Leetcode: 1721. Swapping Nodes in a Linked List.
# https://leetcode.com/problems/swapping-nodes-in-a-linked-list/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 943 ms, faster than 31.25% of Ruby online submissions for Swapping Nodes in a Linked List.
# Memory Usage: 236.9 MB, less than 12.50% of Ruby online submissions for Swapping Nodes in a Linked List.
#
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def swap_nodes(head, k)
  array = []
  tmp = head
  while tmp
    array.push(tmp)
    tmp = tmp.next
  end
  n = array.size
  # Add fakes.
  array.unshift(ListNode.new)
  array.push(ListNode.new)
  # Set pointers.
  array[0].next = array[1]
  array[n].next = array[n+1]
  # Caluclate swap indices.
  i,j = k, n + 1 - k
  # Swap.
  array[i],array[j] = array[j],array[i]
  # Normilize indices.
  array[i-1].next = array[i]
  array[i].next = array[i+1]
  array[j-1].next = array[j]
  array[j].next = array[j+1]
  # Remore fakes.
  array[0].next = nil
  array[n].next = nil
  # Return head.
  array[1]
end
