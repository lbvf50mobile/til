# Leetcode: 341. Flatten Nested List Iterator.
# https://leetcode.com/problems/flatten-nested-list-iterator
# This is the interface that allows for creating nested lists.
# You should not implement it, or speculate about its implementation
#
#class NestedInteger
#    def is_integer()
#        """
#        Return true if this NestedInteger holds a single integer, rather than a nested list.
#        @return {Boolean}
#        """
#
#    def get_integer()
#        """
#        Return the single integer that this NestedInteger holds, if it holds a single integer
#        Return nil if this NestedInteger holds a nested list
#        @return {Integer}
#        """
#
#    def get_list()
#        """
#        Return the nested list that this NestedInteger holds, if it holds a nested list
#        Return nil if this NestedInteger holds a single integer
#        @return {NestedInteger[]}
#        """

class NestedIterator
    # @param {NestedInteger[]} nested_list
    def initialize(nested_list)
      # If it is a flat list need to store only index.
      # If it is a list of list also need a stack. When enter some list need to
      # do something.
      # When current index is equal to size need to go up.
      @l = nested_list # Full list.
      @c = nested_list # Current.
      @s = [] # Stack.
      @i = 0 # Pointer.
        
    end

    # @return {Boolean}
    def has_next
      return true if @c.size > @i
      # Moving down into the stack.
      @s.reverse_each do |pair|
        i,l = pair
        # Found one element in the stack that is not empty.
        return true if i+1 < l.size
      end
      return false
    end

    # @return {Integer}
    def next
      norm
    end
    def norm
      if @i < @c.size && @c[@i].is_integer()
        ans = @c[@i].get_integer()
        @i += 1
        reutrn @ans
      end
      if @i < @c.size && ! @c[@i].is_integer()
        while @i < @c.size && !@c[@i].is_integer()
          @s.push([@i+1,@c])
          @i, @c = 0, @c[@i].get_list()
        end
        ans = @c[@i].get_integer()
        @i += 1
        return ans
      end
      if @i >= @c.size
        @i,@c = @s.pop
        return norm
      end
    end
end

# Your NestedIterator will be called like this:
# i, v = NestedIterator.new(nested_list), []
# while i.has_next()
#    v << i.next
# end
