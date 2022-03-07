# Leetcode: 21. Merge Two Sorted Lists.
# https://leetcode.com/problems/merge-two-sorted-lists/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 83 ms, faster than 78.60% of Ruby online submissions for Merge Two Sorted Lists.
# Memory Usage: 211.1 MB, less than 13.56% of Ruby online submissions for Merge Two Sorted Lists.
#
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  @l1, @l2 = list1, list2
  head = select_element()
  return head if head.nil?
  tail = head
  while @l1 || @l2
    tail.next = select_element()
    tail = tail.next
  end
  return head
end

def select_element()
  return nil if @l1.nil? && @l2.nil?
  answer = nil
  if @l2.nil?
    answer = @l1
    @l1 = @l1.next
  elsif @l1.nil?
    answer = @l2
    @l2 = @l2.next
  elsif @l1.val < @l2.val
    answer = @l1
    @l1 = @l1.next 
  else
    answer = @l2
    @l2 = @l2.next
  end
  # Always protect against dead loop.
  answer.next = nil
  return answer
end
