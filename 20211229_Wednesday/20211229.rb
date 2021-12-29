# Leetcode: 116. Populating Next Right Pointers in Each Node.
# https://leetcode.com/problems/populating-next-right-pointers-in-each-node/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 158 ms, faster than 25.00% of Ruby online submissions for Populating Next Right Pointers in Each Node.
# Memory Usage: 234 MB, less than 79.55% of Ruby online submissions for Populating Next Right Pointers in Each Node.
#

# Definition for Node.
# class Node
#     attr_accessor :val, :left, :right, :next
#     def initialize(val)
#         @val = val
#         @left, @right, @next = nil, nil, nil
#     end
# end

# @param {Node} root
# @return {Node}
def connect(root)
  return root if root.nil?
  q = []
  ql = []
  q.push(root)
  ql.push(0)
  while ! q.empty?
    element = q.shift
    level = ql.shift
    element.next = nil # Better to implement this for safety. And nil a pointer.
    if (!q.empty?) && ql.first == level
      element.next = q.first
    end
    if element.left
      q.push(element.left)
      ql.push(level+1)
    end
    if element.right
      q.push(element.right)
      ql.push(level+1)
    end
  end
  root
end
