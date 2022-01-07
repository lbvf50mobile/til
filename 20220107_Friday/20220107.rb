# Leetcode: 382. Linked List Random Node.
# https://leetcode.com/problems/linked-list-random-node/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 125 ms, faster than 70.00% of Ruby online submissions for Linked List Random Node.
# Memory Usage: 212.5 MB, less than 40.00% of Ruby online submissions for Linked List Random Node.
#
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
class Solution

=begin
    :type head: ListNode
=end
    def initialize(head)
      @array = []
      tmp = head
      while tmp
        @array.push(tmp)
        tmp = tmp.next
      end
    end
=begin
    :rtype: Integer
=end
    def get_random()
      @array[rand(@array.size)].val
    end
end

# Your Solution object will be instantiated and called as such:
# obj = Solution.new(head)
# param_1 = obj.get_random()
