# Leetcode: 725. Split Linked List in Parts.
# https://leetcode.com/problems/split-linked-list-in-parts
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 61 ms, faster than 100.00% of Ruby online submissions for Split
# Linked List in Parts.
# Memory Usage: 211 MB, less than 100.00% of Ruby online submissions for Split
# Linked List in Parts.
# 2023.09.06 Daily Challenge.
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} k
# @return {ListNode[]}
def split_list_to_parts(head, k)
  return [head] if 1 == k
  return ([nil] * k) if head.nil?
  # Save list in array.
  a = []
  while head
    a.push head
    head = head.next
  end
  if k > a.size
    return converter( a.map{|x| [x]} + [[]]*(k-a.size))
  end
  if 0 == a.size%k
    return converter(a.each_slice(a.size/k).to_a)
  end
  chunk_size = a.size/k
  big_chunk_size = a.size/k + 1
  amount_of_big_chunks = a.size%k
  amount_of_noral_chunks = k - amount_of_big_chunks
  border = amount_of_big_chunks * big_chunk_size
  return converter(a[0...border].each_slice(big_chunk_size).to_a + a[border..-1].each_slice(chunk_size).to_a)
end

def converter(arr)
  return arr.map{|x| x.empty? ? nil : a2l(x)}
end
def a2l(arr)
  arr.each{|x| x.next = nil }
  (0...(arr.size-1)).each{|i| arr[i].next = arr[i+1]}
  return arr[0]
end
