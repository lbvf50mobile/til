# Leetcode: 284. Peeking Iterator.
# https://leetcode.com/problems/peeking-iterator/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 89 ms, faster than 81.82% of Ruby online submissions for Peeking Iterator.
# Memory Usage: 210.9 MB, less than 18.18% of Ruby online submissions for Peeking Iterator.
#
# Below is the interface for Iterator, which is already defined for you.
#
# class Iterator
# 	def initialize(v)
#   
#   end
#
#   def hasNext()
#		Returns true if the iteration has more elements.
#   end
#
#   def next()
#   	Returns the next element in the iteration.
#   end
# end

class PeekingIterator
    # @param {Iterator} iter
    def initialize(iter)
      @a = iter
      @pointer = -1
      @stack = []
      @stack.push @a.next if @a.hasNext
      @stack.push @a.next if @a.hasNext
    end
    
    # Returns true if the iteration has more elements.
    # @return {boolean}
    def hasNext()
      @pointer + 1 < @stack.size
    end
    
    # Returns the next element in the iteration.
    # @return {integer}
    def next()
      @stack.push @a.next if @a.hasNext
      @pointer += 1
      @stack[@pointer]
    end
    
    # Returns the next element in the iteration without advancing the iterator.
    # @return {integer}
    def peek()
      @stack[@pointer+1]
    end
end
