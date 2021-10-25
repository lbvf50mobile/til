# Leetcode: 155. Min Stack.
# https://leetcode.com/problems/min-stack/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 145 ms, faster than 30.69% of Ruby online submissions for Min Stack.
# Memory Usage: 213.7 MB, less than 54.46% of Ruby online submissions for Min Stack.
class MinStack
    def initialize()
      @a = []
      @mins = []
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
      @mins.push(@min)
    end


=begin
    :rtype: Void
=end
    def pop()
      return if @a.empty?
      @a.pop
      @mins.pop
      @min = @mins.last
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
