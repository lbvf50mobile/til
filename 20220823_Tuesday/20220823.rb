# Leetcode: 234. Palindrome Linked List.
# https://leetcode.com/problems/palindrome-linked-list/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 723 ms, faster than 25.77% of Ruby online submissions for Palindrome Linked List.
# Memory Usage: 226.5 MB, less than 22.70% of Ruby online submissions for Palindrome Linked List.
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
  @d = true
  # Solve task in O(n) time and O(1) space.
  size = get_size(head)
  puts "size = #{size}" if @d
  return true if 1 == size
  # Calculate tail index.
  tail_index = 0
  if size.even?
    tail_index = size/2
  else
    tail_index = size/2 + 1
    # 3 => 0,1,2 => 2
    # 5 => 0,1,2,3,4 => 2 + 1 => 3
  end
  puts  "tail_index = #{tail_index}" if @d
  tail = get_n(head, tail_index)
  puts "tail_value = #{tail.val}" if @d
  rotate_steps = size/2 
  puts "rotate_steps = #{rotate_steps}" if @d
  head1 = rotate(tail, rotate_steps)
  puts "head1 = #{head1.val}" if @d
  rotate_steps.times do 
    return false if head.val != head1.val
    head = head.next
    head1 = head1.next
  end
  return true
end


def get_size(head)
  size = 0
  while head
    size += 1
    head = head.next
  end
  size
end

def get_n(head,i)
  i.times do
    head = head.next
  end
  head
end

def rotate(tail, steps)
  prev = nil
  head = nil
  steps.times do 
    head = tail
    tmp = tail.next
    tail.next = prev
    prev = tail
    tail = tmp
  end
  head
end


  
