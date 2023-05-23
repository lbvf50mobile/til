# Leetcode: 703. Kth Largest Element in a Stream.
# https://leetcode.com/problems/kth-largest-element-in-a-stream/
# = = = = = = = = = = = = = =
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# TLE. Leetcode's HEAP implementation always leads to TLE.
# This result could be treated as correct solution.

class KthLargest

=begin
    :type k: Integer
    :type nums: Integer[]
=end
    def initialize(k, nums)
      @k = k
      @mh = MinHeap.new(nums)
    end


=begin
    :type val: Integer
    :rtype: Integer
=end
    def add(val)
      # Allways add.
      @mh.push val
      # Raise exception if there are not enought elements.
      raise "Not enought elements #{val} => size #{@mg.size}" if @mh.size < @k
      # Pop til there are @k elements.
      while @k < @mh.size; @mh.pop; end
      # Now get it!
      x = @mh.pop
      @mh.push x
      return x
    end


end

# Your KthLargest object will be instantiated and called as such:
# obj = KthLargest.new(k, nums)
# param_1 = obj.add(val)
