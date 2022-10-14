# Leetcode: 2095. Delete the Middle Node of a Linked List.
# https://leetcode.com/problems/delete-the-middle-node-of-a-linked-list/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 2340 ms, faster than 22.22% of Ruby online submissions for Delete the Middle Node of a Linked List.
# Memory Usage: 234.5 MB, less than 44.44% of Ruby online submissions for Delete the Middle Node of a Linked List.
# 2022.10.14 Daily Challenge.
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
def delete_middle(head)
  arr = []
  while head 
    arr.push(head)
    head = head.next
  end
  arr.each{|x| x.next = nil}
  return nil if 1 == arr.size
  prev = nil
  skip = arr.size/2  
  (0...arr.size).each do |i|
    next if i == skip
    prev.next = arr[i] if prev
    prev = arr[i]
  end
  return arr[0]
end
