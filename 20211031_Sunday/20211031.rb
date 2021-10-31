# Leetcode: 430. Flatten a Multilevel Doubly Linked List.
# https://leetcode.com/problems/flatten-a-multilevel-doubly-linked-list/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 56 ms, faster than 95.45% of Ruby online submissions for Flatten a Multilevel Doubly Linked List.
# Memory Usage: 210.4 MB, less than 40.91% of Ruby online submissions for Flatten a Multilevel Doubly Linked List.
# Definition for a Node.
# class Node
#     attr_accessor :val, :prev, :next, :child
#     def initialize(val=nil, prev=nil, next_=nil, child=nil)
#         @val = val
#         @prev = prev
#         @next = next_
#         @child = child
#     end
# end

# @param {Node} root
# @return {Node}
def flatten(root)
  return root if ! root
  head = root
  stack = []
  node = root
  while node
    # Set child as next.
    if node.child
      stack.push(node.next) if node.next
      node.next = node.child
      node.child.prev = node
      node.child = nil
    end
    # Next is nil, need to get next from stack.
    if node.next.nil? && (! stack.empty?)
      tmp = stack.pop()
      node.next = tmp
      tmp.prev = node
    end
    node = node.next
  end
  head
end
