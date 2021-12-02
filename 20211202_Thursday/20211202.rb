# Leetcode: 328. Odd Even Linked List.
# https://leetcode.com/problems/odd-even-linked-list/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 52 ms, faster than 90.32% of Ruby online submissions for Odd Even Linked List.
# Memory Usage: 210.4 MB, less than 54.84% of Ruby online submissions for Odd Even Linked List.
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
def odd_even_list(head)
  even = ListNode.new
  odd = ListNode.new
  even_head, odd_head = even, odd
  i = 0
  while head
    if i.even?
      odd.next = head
      odd = head 
    else
      even.next = head
      even = head
    end
    head = head.next
    i += 1
  end
  odd.next = nil
  even.next = nil
  odd.next = even_head.next
  even.next = nil
  odd_head.next
end
