# Leetcode: 86. Partition List.
# https://leetcode.com/problems/partition-list/
# Definition for singly-linked list.
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 87 ms, faster than 85.71% of Ruby online submissions for Partition List.
# Memory Usage: 211 MB, less than 64.29% of Ruby online submissions for Partition List.
#
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} x
# @return {ListNode}
def partition(head, x)
  less, gr_o_eq = nil, nil
  less_last, gr_o_eq_last = nil, nil
  tmp = head
  while tmp
    nxt = tmp.next
    if tmp.val < x 
      if less.nil?
        less = tmp # Set head.
        less_last = tmp # Set tail.
      else
        less_last.next = tmp # Extend tail.
        less_last = tmp # Move tail pointer.
      end
    else
      if gr_o_eq.nil?
        gr_o_eq = tmp # Set head.
        gr_o_eq_last = tmp # Set tail.
      else
        gr_o_eq_last.next = tmp # Extend tail.
        gr_o_eq_last = tmp # Move tail pointer.
      end
    end
    tmp.next = nil # Nill new added element pointer.
    tmp = nxt
  end
  if less.nil?
    return gr_o_eq # No small elements. Return head of big ones.
  end
  less_last.next = gr_o_eq # Connect tail of small ones with head of big ones.
  return less
end
