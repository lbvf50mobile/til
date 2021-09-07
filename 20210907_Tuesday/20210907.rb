# Leetcode: 206. Reverse Linked List.
# https://leetcode.com/problems/reverse-linked-list/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/636/week-1-september-1st-september-7th/3966/
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
def reverse_list(head)
  return head if head.nil?
  prev, curr = nil, head
  while curr.next # there is a way to move forward.
    tmp = curr.next # save next node.
    curr.next = prev # rotate pointer.
    prev = curr # define new prev.
    curr = tmp # make step foward, next become current.
  end
  curr.next = prev
  return curr 
end
