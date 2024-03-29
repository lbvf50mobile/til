# Leetcode: 19. Remove Nth Node From End of List.
# https://leetcode.com/problems/remove-nth-node-from-end-of-list/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 83 ms, faster than 92.79% of Ruby online submissions for Remove Nth Node From End of List.
# Memory Usage: 211 MB, less than 45.50% of Ruby online submissions for Remove Nth Node From End of List.
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  # Recalculate n. To count it from the
  # beginign 1-indiced.
  n = get_size(head) - n + 1
  # Head changes only if 1 == n.
  return head.next if 1 == n
  # Because of description's constrains
  # 1 <= n <= size of list. No need in checks.
  tmp = head
  prev_n = n - 1
  after_n = n + 1
  prev,after = nil,nil
  (1..after_n).each do |i|
    prev = tmp if i == prev_n
    after = tmp if i == after_n
    tmp = tmp.next if tmp
  end
  prev.next = after
  head
end

def get_size(head)
  counter = 0
  while head
    head = head.next
    counter += 1
  end
  counter
end
