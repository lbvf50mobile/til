# Leetcode: 148. Sort List.
# https://leetcode.com/problems/sort-list/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 240 ms, faster than 77.78% of Ruby online submissions for Sort List.
# Memory Usage: 216.5 MB, less than 62.96% of Ruby online submissions for Sort List.
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
def sort_list(head)
  return nil if head.nil?
  array = []
  tmp = head
  while tmp
    array.push(tmp)
    tmp = tmp.next
  end
  # As a rule against bugs.
  # Take list node - nil pointers.
  array.each{|x| x.next = nil}
  array.sort!{|a,b| a.val <=> b.val}
  (0...(array.size-1)).each do |i|
    array[i].next = array[i+1]
  end
  array[0]
end
