# Leetcode: 92. Reverse Linked List II.
# https://leetcode.com/problems/reverse-linked-list-ii/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 62 ms, faster than 62.50% of Ruby online submissions for Reverse
# Linked List II.
# Memory Usage: 211.1 MB, less than 50.00% of Ruby online submissions for
# Reverse Linked List II.
# 2023.09.07 Daily Challenge.
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} left
# @param {Integer} right
# @return {ListNode}
def reverse_between(head, left, right)
  a = []
  while head
    a.push head
    head = head.next
  end
  a.each{|x| x.next = nil}
  l = left - 1
  r = right - 1

  a1 = a[0...l]
  a2 = a[l..r]
  a3 = a[r+1..-1]
  ans = a1 + a2.reverse + a3
  (0...(ans.size-1)).each{|i| ans[i].next = ans[i+1]}
  return ans[0]
end
