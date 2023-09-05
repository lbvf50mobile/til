# Leetcode: 138. Copy List with Random Pointer.
# https://leetcode.com/problems/copy-list-with-random-pointer
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 78 ms, faster than 54.17% of Ruby online submissions for Copy List
# with Random Pointer.
# Memory Usage: 211.4 MB, less than 60.42% of Ruby online submissions for Copy
# List with Random Pointer.
# 2023.09.05 Daily Challenge.
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
  # May be just use an array?
  # Yes that would be rather simple and fast.
  # But also I need a hash to have a map between element and index.
  h2 = {} # key old, key new
  a1 = [] # old
  a2 = [] # new
  tmp = head
  while tmp
    old = tmp
    new = Node.new(old.val)
    a1.push old
    a2.push new
    h2[old] = new
    tmp = tmp.next
  end
  # Fill next.
  (0...a2.size - 1).each do |i|
    a2[i].next = a2[i+1]
  end
  # Fill random.
  a2.size.times do |i|
    old = a1[i]
    new = a2[i]
    if old.random
      new_random = h2[old.random]
      new.random = new_random
    end
  end
  return a2[0]
end
