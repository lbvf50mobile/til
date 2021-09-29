# Leetcode: 725. Split Linked List in Parts.
# https://leetcode.com/problems/split-linked-list-in-parts/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/640/week-5-september-29th-september-30th/3992/
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
  d = false
  arr = []
  while head
    arr.push(head.val)
    head = head.next
  end
  p arr if d
  p k if d
  if arr.empty?
    p "empty" if d
    return Array.new(k).map{ [] }
  end
  if arr.size < k
    p "arr.size < k" if d
    return arr.each_slice(1).to_a + Array.new(k - arr.size).map{[]}
  end
  if 0 == arr.size%k
    p "0 == arr.size%k" if d
    return arr.each_slice(arr.size/k).to_a
  end
  n = arr.size/k
  m = n+1
  p "n=#{n}, m=#{m}, size=#{arr.size}" if d
  ans = []
  k.times do |i|
    rest = k - i
    if 0 == arr.size
      p "0" if d
      ans.push([])
      next
    end
    if 0 == arr.size%n && rest == arr.size/n
      p  "arr.size%n" if d
      ans.push(arr.shift(n))
      next
    end
    ans.push(arr.shift(m))
  end
  return ans
end
