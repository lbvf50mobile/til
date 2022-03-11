# Leetcode: 61. Rotate List.
# https://leetcode.com/problems/rotate-list/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 137 ms, faster than 25.00% of Ruby online submissions for Rotate List.
# Memory Usage: 211.1 MB, less than 33.33% of Ruby online submissions for Rotate List.
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
def rotate_right(head, k)
  return head if head.nil?
  arr = []
  tmp = head
  while tmp
    arr.push tmp
    tmp = tmp.next
  end
  arr.each{|x| x.next = nil}
  arr.rotate!(-(k % arr.size))
  (1...arr.size).each do |i|
    arr[i-1].next = arr[i]
  end
  arr[0]
end
