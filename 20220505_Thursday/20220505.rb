# Leetcode: 225. Implement Stack using Queues.
# https://leetcode.com/problems/implement-stack-using-queues/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 153 ms, faster than 5.56% of Ruby online submissions for Implement Stack using Queues.
# Memory Usage: 210.8 MB, less than 100.00% of Ruby online submissions for Implement Stack using Queues.
class MyStack
    def initialize()
      @q1, @q2 = [],[]
        
    end


=begin
    :type x: Integer
    :rtype: Void
=end
    def push(x)
      @q1.push x
    end


=begin
    :rtype: Integer
=end
    def pop()
       last = nil
       @q1.size.times do
         last = @q1.shift
         @q2.push last
       end
       (@q2.size-1).times do 
         @q1.push(@q2.shift)
       end
       @q2.shift
       last
    end


=begin
    :rtype: Integer
=end
    def top()
      x = pop()
      push(x)
      x
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
