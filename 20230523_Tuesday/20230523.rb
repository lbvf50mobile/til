# Leetcode: 703. Kth Largest Element in a Stream.
# https://leetcode.com/problems/kth-largest-element-in-a-stream/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 2819 ms, faster than 6.67% of Ruby online submissions for Kth Largest
# Element in a Stream.
# Memory Usage: 213.7 MB, less than 6.67% of Ruby online submissions for Kth
# Largest Element in a Stream.
# 2023.05.23 Daily Challenge.

class KthLargest

=begin
    :type k: Integer
    :type nums: Integer[]
=end
    def initialize(k, nums)
      @k = k
      @a = nums.sort 
      if @a.size > k
        @a = @a[-k..-1]
      end
    end


=begin
    :type val: Integer
    :rtype: Integer
=end
    def add(val)
      if @a.size < @k
        @a.push val
        raise "To small." if @a.size < @k
        @a.sort!
        return @a.first
      end
      raise "Incorrect size." if @a.size != @k
      if @a.first >= val
        return @a.first
      else
        @a.shift
        @a.unshift val
        @a.sort!
        return @a.first
      end
    end

end

# Your KthLargest object will be instantiated and called as such:
# obj = KthLargest.new(k, nums)
# param_1 = obj.add(val)
