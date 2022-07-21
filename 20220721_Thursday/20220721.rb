# Leetcode: 92. Reverse Linked List II.
# https://leetcode.com/problems/reverse-linked-list-ii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 136 ms, faster than 23.81% of Ruby online submissions for Reverse Linked List II.
# Memory Usage: 211.1 MB, less than 23.81% of Ruby online submissions for Reverse Linked List II.
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
  arr = []
  tmp = head
  while tmp
    arr.push(tmp)
    tmp = tmp.next
  end
  arr.each{|node| node.next = nil}
  l,r = left-1, right-1
  arr = (arr[0...l] || []) + arr[l..r].reverse + (arr[(r+1)..-1] || [])
  (0...(arr.size-1)).each do |i|
    arr[i].next = arr[i+1]
  end
  return arr[0]
end
