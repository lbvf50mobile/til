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
  while curr
    if curr.next.nil? # no way to move forward.
      curr.next = prev
      return curr # time to return.
    else
      tmp = curr.next # it is possible to move forward.
      curr.next = prev
      prev = curr
      curr = tmp # make step foward, next become current.
    end
  end
  raise "This line could not be reached, error in the algorithm or in the input."
end
