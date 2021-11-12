# Leetcode: 203. Remove Linked List Elements.
# https://leetcode.com/problems/remove-linked-list-elements/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 76 ms, faster than 53.19% of Ruby online submissions for Remove Linked List Elements.
# Memory Usage: 211.3 MB, less than 61.70% of Ruby online submissions for Remove Linked List Elements.
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
  # First loop. Remove from the begining.
  while head && head.val == val
    head = head.next
  end
  prev,tmp = nil, head
  while tmp
    # What if there no any val?
    if tmp.val != val
      prev = tmp
      tmp = tmp.next
    # But the val appears.
    else
      while tmp && tmp.val == val
        tmp = tmp.next
      end
      # Now tmp does not have val.
      # If prev need to switch pointers.
      prev.next = tmp if prev
    end
  end
  head
end
  
