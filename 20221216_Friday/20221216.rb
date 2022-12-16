# Leetcode: 232. Implement Queue using Stacks.
# https://leetcode.com/problems/implement-queue-using-stacks/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 84 ms, faster than 88.14% of Ruby online submissions for Implement Queue using Stacks.
# Memory Usage: 210.8 MB, less than 88.14% of Ruby online submissions for Implement Queue using Stacks.
# 2022.12.16 Daily Challenge.
class MyQueue
    def initialize()
      @tmp = []
      @rv = []
        
    end


=begin
    :type x: Integer
    :rtype: Void
=end
    def push(x)
      n = @rv.size
      n.times do 
        @tmp.push(@rv.pop())
      end
      @tmp.push(x)
      n = @tmp.size
      n.times do 
        @rv.push(@tmp.pop())
      end
    end


=begin
    :rtype: Integer
=end
    def pop()
      @rv.pop()
    end


=begin
    :rtype: Integer
=end
    def peek()
      @rv.last()
    end


=begin
    :rtype: Boolean
=end
    def empty()
      @rv.empty?
    end
end

# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()
