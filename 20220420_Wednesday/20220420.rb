# Leetcode: 173. Binary Search Tree Iterator.
# https://leetcode.com/problems/binary-search-tree-iterator/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 157 ms, faster than 56.41% of Ruby online submissions for Binary Search Tree Iterator.
# Memory Usage: 216 MB, less than 64.10% of Ruby online submissions for Binary Search Tree Iterator.
#
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
class BSTIterator

=begin
    :type root: TreeNode
=end
    def initialize(root)
      @a, @i = [], 0
      stack = [root]
      while ! stack.empty?
        while stack.last.left
          stack.push stack.last.left
        end
        while ! stack.empty?
          x = stack.pop
          @a.push x
          if x.right
            stack.push x.right
            break
          end
        end
      end
        
    end


=begin
    :rtype: Integer
=end
    def next()
      ans = @a[@i].val
      @i += 1
      ans
    end


=begin
    :rtype: Boolean
=end
    def has_next()
      @i < @a.size
    end


end

# Your BSTIterator object will be instantiated and called as such:
# obj = BSTIterator.new(root)
# param_1 = obj.next()
# param_2 = obj.has_next()
