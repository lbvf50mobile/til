# Leetcode: 138. Copy List with Random Pointer.
# https://leetcode.com/problems/copy-list-with-random-pointer/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 100 ms, faster than 59.65% of Ruby online submissions for Copy List with Random Pointer.
# Memory Usage: 211.4 MB, less than 63.16% of Ruby online submissions for Copy List with Random Pointer.
#
# Definition for Node.
# class Node
#     attr_accessor :val, :next, :random
#     def initialize(val = 0)
#         @val = val
#		  @next = nil
#		  @random = nil
#     end
# end

# @param {Node} node
# @return {Node}
def copyRandomList(head)
  return nil if head.nil?
  a = []
  tmp = head
  while tmp
    a.push(tmp)
    tmp = tmp.next
  end
  hash = {}
  a.each_with_index{|o,i| hash[o] = i}
  b = a.map{|x| Node.new(x.val)}
  (0...b.size).each do |i|
    pointer = a[i].random
    b[i].random = pointer.nil? ? nil : b[hash[pointer]]
  end
  (1...b.size).each do |i|
    b[i-1].next = b[i]
  end
  b[0]
end
