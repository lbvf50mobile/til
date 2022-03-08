# Leetcode: 141. Linked List Cycle.
# https://leetcode.com/problems/linked-list-cycle/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 88 ms, faster than 83.27% of Ruby online submissions for Linked List Cycle.
# Memory Usage: 212.1 MB, less than 53.16% of Ruby online submissions for Linked List Cycle.
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
  p1,p2 = head, head
  while p1 && p2
    10.times do 
      break if p1.nil?
      p1 = p1.next
      return true if p1 && p2 && p1 == p2
    end
    p2 = p2.next
    return true if p1 && p2 && p1 == p2
  end
  return false
end
