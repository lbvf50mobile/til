# Leetcode: 141. Linked List Cycle.
# https://leetcode.com/problems/linked-list-cycle/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 88 ms, faster than 39.00% of Ruby online submissions for Linked List
# Cycle.
# Memory Usage: 213.8 MB, less than 21.24% of Ruby online submissions for Linked
# List Cycle.
# 2023.09.04 Daily Challenge.
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
  a = head
  b = head.next
  while (!a.nil?) && (!b.nil?)
    return true if a.object_id == b.object_id
    a = a.next
    b = b.next ? b.next.next : nil
  end
  return false
end
