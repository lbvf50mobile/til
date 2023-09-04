# Leetcode: 141. Linked List Cycle.
# https://leetcode.com/problems/linked-list-cycle/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 71 ms, faster than 77.61% of Ruby online submissions for Linked List
# Cycle.
# Memory Usage: 216.6 MB, less than 10.81% of Ruby online submissions for Linked
# List Cycle.
# 2023.09.04 Daily Challenge.
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
  h = {}
  tmp = head
  while tmp
    return true if h[tmp]
    h[tmp] = true
    tmp = tmp.next
  end
  return false
end
