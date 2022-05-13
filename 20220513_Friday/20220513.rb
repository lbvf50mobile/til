# Leetcode: 117. Populating Next Right Pointers in Each Node II.
# https://leetcode.com/problems/populating-next-right-pointers-in-each-node-ii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 166 ms, faster than 42.31% of Ruby online submissions for Populating Next Right Pointers in Each Node II.
# Memory Usage: 241.9 MB, less than 42.31% of Ruby online submissions for Populating Next Right Pointers in Each Node II.
#
# Definition for a Node.
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
  return if root.nil?
  levels = []
  q = [[root,0]]
  while !q.empty?
    x,l = q.shift
    levels.push([]) if levels.size == l
    levels.last.push(x)
    q.push([x.left,l+1]) if x.left
    q.push([x.right, l+1]) if x.right
  end
  levels.each do |level|
    (0...level.size-1).each do |i|
      level[i].next = level[i+1]
    end
    level.last.next = nil
  end
  root
end

