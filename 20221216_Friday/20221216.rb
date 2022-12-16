# Leetcode: 232. Implement Queue using Stacks.
# https://leetcode.com/problems/implement-queue-using-stacks/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 90 ms, faster than 86.44% of Ruby online submissions for Implement Queue using Stacks.
# Memory Usage: 211.1 MB, less than 47.46% of Ruby online submissions for Implement Queue using Stacks
# 2022.12.16 Daily Challenge.
#
class MyQueue
    def initialize()
      @a = []
      @b = []
        
    end


=begin
    :type x: Integer
    :rtype: Void
=end
    def push(x)
      @a.push(x)
    end


=begin
    :rtype: Integer
=end
    def pop()
      @a.shift()
    end


=begin
    :rtype: Integer
=end
    def peek()
      @a[0]
        
    end


=begin
    :rtype: Boolean
=end
    def empty()
      @a.empty?
    end


end

# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()
