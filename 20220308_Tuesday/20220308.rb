# Leetcode: 141. Linked List Cycle.
# https://leetcode.com/problems/linked-list-cycle/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 167 ms, faster than 21.19% of Ruby online submissions for Linked List Cycle.
# Memory Usage: 216 MB, less than 11.15% of Ruby online submissions for Linked List Cycle.
#
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  return false if head.nil?
  h = {}
  h[head] = true
  while head
    head = head.next
    return true if head && h[head]
    h[head] = true if head
  end
  return false
end
