# Leetcode: 1721. Swapping Nodes in a Linked List.
# https://leetcode.com/problems/swapping-nodes-in-a-linked-list/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 643 ms, faster than 20.00% of Ruby online submissions for Swapping
# Nodes in a Linked List.
# Memory Usage: 226.4 MB, less than 100.00% of Ruby online submissions for
# Swapping Nodes in a Linked List.
# 2023.05.15 Daily Challenge.
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
  arr = []
  tmp = head
  while tmp
    arr.push tmp
    tmp = tmp.next
  end
  i,j = k-1, arr.size - k
  arr[i],arr[j] = arr[j], arr[i]
  (0...arr.size-1).each do |i|
    arr[i].next = arr[i+1]
  end
  arr[-1].next = nil
  arr[0]
end
