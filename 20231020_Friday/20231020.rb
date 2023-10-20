# Leetcode: 341. Flatten Nested List Iterator.
# https://leetcode.com/problems/flatten-nested-list-iterator
# This is the interface that allows for creating nested lists.
#
# Error. What a surprice. Test cases do not support the descriptions.
# [[]] - it is possible to have empty lists.
#
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
      @c = nested_list # Current list.
      @s = [] # Stack. Stack stores next element. Element after entered one. Pop and use.
      @i = 0 # Pointer of the current list.
        
    end

    # @return {Boolean}
    # Idea. There is something to return if there is index were to step next
    # time.
    def has_next
      return true if  @i < @c.size
      # Moving down into the stack.
      @s.reverse_each do |pair|
        i,l = pair
        # Found one element in the stack that is not empty.
        # There is a place were to at this layer.
        return true if i < l.size
      end
      return false
    end

    # @return {Integer}
    def next
      norm
    end
    def norm
      # Simplest situation just return ineger and move pointer.
      if @i < @c.size && @c[@i].is_integer()
        ans = @c[@i].get_integer()
        @i += 1
        return ans
      end
      # More complicate situation go into a subarray.
      # Moving till first element is not sub array.
      if @i < @c.size && ! @c[@i].is_integer()
        # There is no empty list according to description.
        # So if not integer it means list. There is always something at the
        # index 0.
        while @i < @c.size && !@c[@i].is_integer()
          @s.push([@i+1,@c]) # Save next position for current layer.
          @i, @c = 0, @c[@i].get_list() # Define new position, in a new layer.
        end
        # Just reference to a simplest solution.
        # Because current element is not a list.
        return norm
      end
      # One more situation out of the bound of current layer.
      # Just climb back to a previos one.
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
