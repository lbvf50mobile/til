# Leetcode: 82. Remove Duplicates from Sorted List II. 
# https://leetcode.com/problems/remove-duplicates-from-sorted-list-ii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 104 ms, faster than 66.67% of Ruby online submissions for Remove Duplicates from Sorted List II.
# Memory Usage: 211 MB, less than 53.33% of Ruby online submissions for Remove Duplicates from Sorted List II.
#
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
def delete_duplicates(head)
  h = find_first_uniq_element(head)
  return h if h.nil?
  tmp = h
  while tmp
    nxt = find_first_uniq_element(tmp)
    nxt = find_first_uniq_element(tmp.next) if nxt == tmp 
    tmp.next = nxt
    tmp = nxt
  end
  h
end

def find_first_uniq_element(x)
  tmp = find_end_of_current_duplicates(x)
  while x != tmp
    x = tmp
    tmp = find_end_of_current_duplicates(x)
  end
  x
end

def find_end_of_current_duplicates(x)
  return x if x.nil?
  return x if x.next.nil?
  return x if x.val != x.next.val
  while x && x.next && x.val == x.next.val
    x = x.next
  end
  x.next
end
