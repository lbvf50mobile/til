# Leetcode: 160. Intersection of Two Linked Lists.
# https://leetcode.com/problems/intersection-of-two-linked-lists/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 269 ms, faster than 14.52% of Ruby online submissions for Intersection of Two Linked Lists.
# Memory Usage: 223.2 MB, less than 14.52% of Ruby online submissions for Intersection of Two Linked Lists.
#
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} headA
# @param {ListNode} headB
# @return {ListNode}
def getIntersectionNode(headA, headB)
  require 'set'
  x = Set.new
  tmp = headA
  while tmp
    x.add(tmp.object_id)
    tmp = tmp.next
  end
  tmp = headB
  while tmp
    return tmp if x.include?(tmp.object_id)
    tmp = tmp.next
  end
  return nil
end
