# Leetcode: 2. Add Two Numbers.
# https://leetcode.com/problems/add-two-numbers/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 174 ms, faster than 30.36% of Ruby online submissions for Add Two Numbers.
# Memory Usage: 211.2 MB, less than 9.25% of Ruby online submissions for Add Two Numbers.
#
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  @head,@tail = nil,nil
  @carry = 0
  @l1,@l2 = l1, l2
  set_head
  add_rest_of_lists
  # IMPORTANT. Add last index if carry not zero!
  if ! @carry.zero?
    @tail.next = ListNode.new(1)
    @carry = 0
    @tail = @tail.next
  end
  @head
end

def add_rest_of_lists
  while @l1 || @l2
    if @l1.nil?
      tmp = @l2.val + @carry
      @l2 = @l2.next
    elsif @l2.nil?
      tmp = @l1.val + @carry
      @l1 = @l1.next
    else
      tmp = @l1.val + @l2.val + @carry
      @l1 = @l1.next
      @l2 = @l2.next
    end
    @carry = tmp / 10
    val = tmp % 10
    @tail.next = ListNode.new(val)
    @tail = @tail.next
  end
end

def set_head
  if @l1.nil? && @l2.nil?
    @head = nil
  elsif @l1.nil?
    @head = ListNode.new(@l2.val)
    @l2 = @l2.next
  elsif @l2.nil?
    @head = ListNode.new(@l1.val)
    @l1 = @l1.next
  elsif (!@l1.nil?) && (!@l2.nil?)
    tmp = @l1.val + @l2.val + @carry
    @carry = tmp/10
    val = tmp%10
    @head = ListNode.new(val)
    @l1 = @l1.next
    @l2 = @l2.next
  else
    raise "Unknown postion."
  end
  @tail = @head
end

