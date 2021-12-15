# Leetcode: 147. Insertion Sort List.
# https://leetcode.com/problems/insertion-sort-list/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 1503 ms, faster than 20.00% of Ruby online submissions for Insertion Sort List.
# Memory Usage: 210.5 MB, less than 60.00% of Ruby online submissions for Insertion Sort List.
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
def insertion_sort_list(head)
  return head if head.nil?
  return head if head.next.nil?
  @d = false
  @sorted_pointer = head
  @unsorted_pointer = head.next
  @sorted_pointer.next = nil # Most important line!
  puts "Start loop: sorted=#{@sorted_pointer.val}, unsorted=#{@unsorted_pointer.val}." if @d

  while @unsorted_pointer
    puts "Iteration: #{@unsorted_pointer.val}. Sorted #{@sorted_pointer.val}" if @d
    inserting_element = @unsorted_pointer
    @unsorted_pointer = @unsorted_pointer.next
    insert_into_sorted(inserting_element)
    puts "Unsorted: " if @d
    draw_list(@unsorted_pointer) if @d
    puts "Sorted: " if @d
    draw_list(@sorted_pointer) if @d
    puts "=====================" if @d
  end
  puts "End is reached." if @d
  @sorted_pointer
end

def insert_into_sorted(inserting_element)
  if inserting_element.val < @sorted_pointer.val
    replace_head(inserting_element)
  else
    insert_into(inserting_element)
  end
end

def replace_head(inserting_element)
  puts "Head #{@sorted_pointer.val} < #{inserting_element.val}." if @d
  inserting_element.next = @sorted_pointer
  @sorted_pointer = inserting_element
  puts "New head is #{@sorted_pointer.val}." if @d
end

def insert_into(inserting_element)
  tmp = @sorted_pointer
  val = inserting_element.val
  while tmp
    if tmp.val <= val && (tmp.next.nil? || val < tmp.next.val)
      inserting_element.next = tmp.next
      tmp.next = inserting_element
      return 
    end
    tmp = tmp.next
  end
  raise "Cannot find place to insert."
end

def draw_list(head)
  ans = []
  while head
    ans.push head.val
    head = head.next
  end
  puts ans.join(?,)
end

