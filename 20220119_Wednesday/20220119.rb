# Leetcode: 142. Linked List Cycle II.
# https://leetcode.com/problems/linked-list-cycle-ii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 133 ms, faster than 25.93% of Ruby online submissions for Linked List Cycle II.
# Memory Usage: 213.1 MB, less than 18.52% of Ruby online submissions for Linked List Cycle II.
#
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def detectCycle(head)
  @d = false
  hash = {}
  pos = 0
  tmp = head
  while tmp
    puts "#{tmp.val}" if @d
    if hash[tmp]
      puts "hash[tmp] = #{hash[tmp]} and return." if @d
      return tmp
    else
      puts "set hash[tmp] as ${pos}" if @d
      hash[tmp] = pos
    end
    pos += 1
    tmp = tmp.next
  end
  return nil
end
