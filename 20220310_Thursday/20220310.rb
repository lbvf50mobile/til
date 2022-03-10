# Leetcode: 2. Add Two Numbers.
# https://leetcode.com/problems/add-two-numbers/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 88 ms, faster than 90.91% of Ruby online submissions for Add Two Numbers.
# Memory Usage: 211.2 MB, less than 22.40% of Ruby online submissions for Add Two Numbers.
#
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  sum = l1.val + l2.val
  carry = sum/10
  val = sum % 10
  head = ListNode.new(val)
  tail = head
  l1 = l1.next if l1
  l2 = l2.next if l2
  while l1 || l2
    v1 = l1 ? l1.val : 0
    v2 = l2 ? l2.val : 0
    sum = v1 + v2 + carry
    carry = sum/10
    val = sum % 10
    tail.next = ListNode.new(val)
    tail = tail.next
    l1 = l1.next if l1
    l2 = l2.next if l2
  end
  tail.next = ListNode.new(1) if 0 != carry
  head
end
