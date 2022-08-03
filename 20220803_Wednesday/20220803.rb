# Leetcode: 729. My Calendar I.
# https://leetcode.com/problems/my-calendar-i/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 277 ms, faster than 50.00% of Ruby online submissions for My Calendar I.
# Memory Usage: 211.6 MB, less than 33.33% of Ruby online submissions for My Calendar I.
# Based on: https://leetcode.com/problems/my-calendar-i/solution/
#

class Node
  # Based on: https://leetcode.com/problems/my-calendar-i/solution/
  attr_accessor :start, :end1, :left, :right
  def initialize(start, end1)
    @start = start
    @end1 = end1
    @left = nil
    @right = nil
  end
  def insert(node)
    if node.start >= @end1
      if @right.nil?
        @right = node
        return true
      end
      return @right.insert(node)
    elsif node.end1 <= @start
      if @left.nil?
        @left = node
        return true
      end
      return @left.insert(node)
    else
      return false
    end
  end
end
class MyCalendar
    def initialize()
    # Based on: https://leetcode.com/problems/my-calendar-i/solution/
      @root = nil
    end
=begin
    :type start: Integer
    :type end: Integer
    :rtype: Boolean
=end
    def book(start, end1)
      if @root.nil?
        @root = Node.new(start,end1)
        return true
      else
        return @root.insert(Node.new(start,end1))
      end
    end
end

# Your MyCalendar object will be instantiated and called as such:
# obj = MyCalendar.new()
# param_1 = obj.book(start, end)
