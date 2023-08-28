# Leetcode: 225. Implement Stack using Queues.
# https://leetcode.com/problems/implement-stack-using-queues/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 51 ms, faster than 100.00% of Ruby online submissions for Implement
# Stack using Queues.
# Memory Usage: 211 MB, less than 66.67% of Ruby online submissions for
# Implement Stack using Queues.
# 2023.08.28 Daily Challenge.

class MyStack
    # Based on:
    # https://leetcode.com/problems/implement-stack-using-queues/solution/
    def initialize()
      
      @q1 = []
        
    end


=begin
    :type x: Integer
    :rtype: Void
=end
    def push(x)
      @q1.push(x)
    end


=begin
    :rtype: Integer
=end
    def pop()
      tmp = []
      (@q1.size-1).times do
        tmp.push(@q1.shift)
      end
      ans = @q1.shift
      @q1 = tmp
      return ans
    end


=begin
    :rtype: Integer
=end
    def top()
      @q1[-1]
    end


=begin
    :rtype: Boolean
=end
    def empty()
      @q1.empty?
    end


end

# Your MyStack object will be instantiated and called as such:
# obj = MyStack.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.top()
# param_4 = obj.empty()
