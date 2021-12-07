# Leetcode: 1290. Convert Binary Number in a Linked List to Integer.
# https://leetcode.com/problems/convert-binary-number-in-a-linked-list-to-integer/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 128 ms, faster than 9.09% of Ruby online submissions for Convert Binary Number in a Linked List to Integer.
# Memory Usage: 209.7 MB, less than 81.82% of Ruby online submissions for Convert Binary Number in a Linked List to Integer.
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Integer}
def get_decimal_value(head)
  num = 0
  while head
    num += head.val
    head = head.next
    num *= 2 if head
  end
  num
end
