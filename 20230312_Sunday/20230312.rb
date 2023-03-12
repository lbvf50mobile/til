# Leetcode: 23. Merge k Sorted Lists.
# https://leetcode.com/problems/merge-k-sorted-lists/
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode[]} lists
# @return {ListNode}
# TLE!?
def merge_k_lists(lists)
  return nil if 0 == lists.size
  # Select head.
  head = nil
  head_index = -1
  lists.each_with_index do |x,i|
    next if x.nil? # Important.
    if head.nil? || head.val > x.val
      head = x
      head_index = i
    end
  end
  return head if ! head
  # Fill a tail of the list.
  lists[head_index] = lists[head_index].next # Move pointer to next.
  prev = head
  curr = nil
  prev.next = curr
  curr_i = -1
  while true
    # Need to remove nil's from the array.
    # Fill a new array if an element is not nil.
    # Save index of last element of not_nil array in `i` var.
    new_lists = []
    i = -1
    lists.each do |x|
      # Remove nils from the list.
      if x
        new_lists.push(x)
        i += 1
      else
        next # it is nil, no need to check seek for minimum.
      end
      # Next step is to select minimum.
      if curr.nil? || curr.val > x.val
        curr_i = i 
        curr = x
      end
    end
    break if -1 == i # All element in the list are nils.
    new_lists[curr_i] = new_lists[curr_i].next # Move selected min to a next element.
    prev.next = curr # Add new element to a list.
    prev = curr # Move prev pointer.
    curr = nil
    prev.next = curr # Nill new added next pointer.
    curr_i = -1
    lists = new_lists
  end
  return head
end
