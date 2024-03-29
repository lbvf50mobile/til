# Leetcode: 2130. Maximum Twin Sum of a Linked List.
# https://leetcode.com/problems/maximum-twin-sum-of-a-linked-list/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 445 ms, faster than 41.18% of Ruby online submissions for Maximum
# Twin Sum of a Linked List.
# Memory Usage: 226.2 MB, less than 82.35% of Ruby online submissions for
# Maximum Twin Sum of a Linked List.
# 2023.05.17 Daily Challenge.
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Integer}
def pair_sum(head)
  arr = []
  tmp = head
  while tmp
    arr.push tmp.val
    tmp = tmp.next
  end
  max = 0
  i,j = 0, arr.size - 1
  while i < j
    sum = arr[i] + arr[j]
    max = sum if sum > max
    i += 1
    j -= 1
  end
  return max
end
