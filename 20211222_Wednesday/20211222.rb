# Leetcode: 143. Reorder List.
# https://leetcode.com/problems/reorder-list/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 76 ms, faster than 86.96% of Ruby online submissions for Reorder List.
# Memory Usage: 212.7 MB, less than 91.30% of Ruby online submissions for Reorder List.
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Void} Do not return anything, modify head in-place instead.
def reorder_list(head)
  array = []
  tmp = head
  while tmp
    array.push(tmp)
    tmp = tmp.next
  end
  # Protection from the dead loops.
  array.each{|x| x.next = nil}
  front, back = 1, array.size - 1
  tmp = head
  (1...array.size).each do |i|
    if i.odd?
      tmp.next = array[back]
      back -= 1
    else
      tmp.next = array[front]
      front += 1
    end
    tmp = tmp.next
  end
  head
end

