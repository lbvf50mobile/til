# Leetcode: 155. Min Stack.
# https://leetcode.com/problems/min-stack/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 102 ms, faster than 66.34% of Ruby online submissions for Min Stack.
# Memory Usage: 213.6 MB, less than 71.29% of Ruby online submissions for Min Stack.
class MinStack
    def initialize()
      @a = []
      @min = nil
        
    end


=begin
    :type val: Integer
    :rtype: Void
=end
    def push(val)
      @min = val if ! @min
      @min = val if val < @min
      @a.push(val)
        
    end


=begin
    :rtype: Void
=end
    def pop()
      return if @a.empty?
      x = @a.pop()
      if x == @min
        @min = @a.min
      end
      return x
    end


=begin
    :rtype: Integer
=end
    def top()
      @a.last
    end


=begin
    :rtype: Integer
=end
    def get_min()
      @min
    end


end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()
