# Leetcode: 24. Swap Nodes in Pairs.
# https://leetcode.com/problems/swap-nodes-in-pairs/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 141 ms, faster than 10.59% of Ruby online submissions for Swap Nodes in Pairs.
# Memory Usage: 211.1 MB, less than 5.88% of Ruby online submissions for Swap Nodes in Pairs.
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
def swap_pairs(head)
  arr = []
  tmp = head
  while tmp
    arr.push tmp
    tmp = tmp.next
  end
  # Protection against bugs.
  arr.each{|x| x.next = nil}
  i = 1
  while i < arr.size
    arr[i-1],arr[i] = arr[i], arr[i-1]
    i += 2
  end
  (0...(arr.size-1)).each do |i|
    arr[i].next = arr[i+1]
  end
  arr[0]
end
