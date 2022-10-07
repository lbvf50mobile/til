# Leetcode: 732. My Calendar III.
# https://leetcode.com/problems/my-calendar-iii/
# = = = = = = = = = = = = = = 
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1829 ms, faster than 100.00% of Ruby online submissions for My Calendar III.
# Memory Usage: 221.4 MB, less than 100.00% of Ruby online submissions for My Calendar III.
#
class MyCalendarThree
    # The code is based on:
    # https://leetcode.com/problems/my-calendar-iii/solution/
    def initialize()
      @vals = {}
      @lazy = {}
        
    end

    def update(start,finish, left = 0, right = 10**9, idx = 1)
      return if start > right || finish < left
      if start <= left && left <= right && right <= finish
        @vals[idx] ||= 0
        @lazy[idx] ||= 0
        @vals[idx] += 1
        @lazy[idx] += 1
      else
        mid = (left+right)/2
        update(start, finish, left, mid, idx*2)
        update(start, finish, mid+1, right, idx*2 + 1)
        @lazy[idx] ||= 0
        @vals[idx] ||= 0
        @vals[2*idx] ||= 0
        @vals[2*idx+1] ||= 0
        @vals[idx] = @lazy[idx] + [@vals[2*idx], @vals[2*idx+1]].max
      end
    end


=begin
    :type start: Integer
    :type end: Integer
    :rtype: Integer
=end
    def book(start, finish)
      update(start, finish  - 1)
      return @vals[1]
    end
end

# Your MyCalendarThree object will be instantiated and called as such:
# obj = MyCalendarThree.new()
# param_1 = obj.book(start, end)
