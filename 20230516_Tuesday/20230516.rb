# Leetcode: 24. Swap Nodes in Pairs.
# https://leetcode.com/problems/swap-nodes-in-pairs/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 77 ms, faster than 86.27% of Ruby online submissions for Swap Nodes
# in Pairs.
# Memory Usage: 211 MB, less than 33.33% of Ruby online submissions for Swap
# Nodes in Pairs.
# 2023.05.16 Daily Challenge.
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
def swap_pairs(head)
  return head if ! head
  # Array to store pointers.
  arr = []
  # Save pointers to the array.
  tmp = head
  while tmp
    arr.push tmp
    tmp = tmp.next
  end
  # Nill all pointers in the array.
  arr.each{|x| x.next = nil}
  # Swap values in the each pair.
  i = 0
  while i < arr.size - 1
    arr[i],arr[i+1] = arr[i+1], arr[i]
    i += 2
  end
  # Redirect pointer.
  (0...arr.size-1).each do |i|
    arr[i].next = arr[i+1]
  end
  # Return a head.
  return arr[0]
end
