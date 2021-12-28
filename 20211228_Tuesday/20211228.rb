# Leetcode: 876. Middle of the Linked List.
# https://leetcode.com/problems/middle-of-the-linked-list/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 48 ms, faster than 84.31% of Ruby online submissions for Middle of the Linked List.
# Memory Usage: 209.8 MB, less than 19.61% of Ruby online submissions for Middle of the Linked List.
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def middle_node(head)
  tmp = head
  arr = []
  while tmp 
    arr.push(tmp)
    tmp = tmp.next
  end
  arr[arr.size/2]
end
