# Leetcode: 328. Odd Even Linked List.
# https://leetcode.com/problems/odd-even-linked-list/
# Definition for singly-linked list.
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime 187ms; Memory 211.7mb;
# 2022.12.06 Daily Challenge.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def odd_even_list(head)
  odd = []
  even = []
  tmp = head
  i = 1
  while tmp 
    if i.even?
      even.push(tmp)
    else
      odd.push(tmp)
    end
    tmp = tmp.next
    i += 1
  end
  ans = odd + even
  ans.each{|x| x.next = nil}
  (0...ans.size-1).each{|i| ans[i].next = ans[i+1]} 
  return ans[0]
end
