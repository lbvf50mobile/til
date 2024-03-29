# Leetcode: 142. Linked List Cycle II.
# https://leetcode.com/problems/linked-list-cycle-ii/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 104 ms, faster than 53.49% of Ruby online submissions for Linked List Cycle II.
# Memory Usage: 214.3 MB, less than 19.38% of Ruby online submissions for Linked List Cycle II.
# 2023.03.09 Daily Challenge.
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def detectCycle(head)
  map = {}
  counter = 0
  while head
    if ! map[head.object_id]
      counter += 1
      map[head.object_id] = counter
    else
      return head
    end
    head = head.next
  end
  return nil
end
