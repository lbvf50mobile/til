# Leetcode: 341. Flatten Nested List Iterator.
# https://leetcode.com/problems/flatten-nested-list-iterator/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 169 ms, faster than 15.00% of Ruby online submissions for Flatten Nested List Iterator.
# Memory Usage: 212.7 MB, less than 65.00% of Ruby online submissions for Flatten Nested List Iterator.
#
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
      # p nested_list.class
      @a = []
      nested_list.each do |x|
        fill(x)
      end
      # p @a
      @i = -1
    end
    def fill(x)
      # p x.class
      if x.is_integer()
        # p "this is integer."
        # p [x.get_integer().class,x.get_integer()]
        @a.push(x.get_integer())
      else
        # p "this is a list."
        x.get_list().each do |el|
          fill(el)
        end
      end
    end

    # @return {Boolean}
    def has_next
      (@i+1).between?(0,@a.size-1)
    end

    # @return {Integer}
    def next
      @i += 1
      @a[@i]
    end
end

# Your NestedIterator will be called like this:
# i, v = NestedIterator.new(nested_list), []
# while i.has_next()
#    v << i.next
# end
