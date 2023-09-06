# Leetcode: 725. Split Linked List in Parts.
# https://leetcode.com/problems/split-linked-list-in-parts
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
    return converter([a] + []*(k-1))
  end
  if 0 == a.size/k
    return converter(a.each_slice(k).to_a)
  end
  if 0 == (a.size-1)%k
    x = a[0...-1]
    x = x.each_slice(k).to_a
    x[-1].push(a[-1])
    return converter(x)
  end
  return converter([a] + []*(k-1))
end

def converter(arr)
  return arr.map{|x| x.empty? ? nil : a2l(x)}
end
def a2l(arr)
  arr.each{|x| x.next = nil}
  (0...(arr.size-1)).each{|i| arr[i].next = arr[i+1]}
  return arr[0]
end
