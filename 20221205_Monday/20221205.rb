# Leetcode: 876. Middle of the Linked List.
# https://leetcode.com/problems/middle-of-the-linked-list/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 145 ms, faster than 53.70% of Ruby online submissions for Middle of the Linked List.
# Memory Usage: 211.1 MB, less than 41.67% of Ruby online submissions for Middle of the Linked List.
# 2022.12.05 Daily Challenge.
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
  return head if ! head
  tmp = head
  arr = []
  while tmp
    arr.push(tmp)
    tmp = tmp.next
  end
  arr[arr.size/2]
end
