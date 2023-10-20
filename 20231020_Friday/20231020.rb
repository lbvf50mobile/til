# Leetcode: 341. Flatten Nested List Iterator.
# https://leetcode.com/problems/flatten-nested-list-iterator
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 88 ms, faster than 14.29% of Ruby online submissions for Flatten
# Nested List Iterator.
# Memory Usage: 212.6 MB, less than 71.43% of Ruby online submissions for
# Flatten Nested List Iterator.
# 2023.10.20 Daily Challenge.

# [[]] - one of the test cases. Test cases do not fulfill description's
# constrains.
# 1 <= nestedList.length <= 500

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
      # Because there are could be an empty lists. 
      # And test do not fulfill the conditions. On every has next have to
      # iterate till the end. And better to save elements ones. 
      @a = []
      fill(nested_list)
    end

    # Fills @a with numbers from nested_list.
    def fill(x)
      s = [[0,x]]
      while !s.empty?
        i,curr = s.pop
        while i < curr.size
          if curr[i].is_integer()
            @a.push(curr[i].get_integer())
            i += 1
          else
            s.push([i+1,curr])
            s.push([0,curr[i].get_list()])
            break
          end
        end
      end
    end
    

    # @return {Boolean}
    # Idea. There is something to return if there is index were to step next
    # time.
    def has_next
      !@a.empty?
    end

    # @return {Integer}
    def next
      @a.shift
    end
end

# Your NestedIterator will be called like this:
# i, v = NestedIterator.new(nested_list), []
# while i.has_next()
#    v << i.next
# end
