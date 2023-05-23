# Leetcode: 703. Kth Largest Element in a Stream.
# https://leetcode.com/problems/kth-largest-element-in-a-stream/

class KthLargest

=begin
    :type k: Integer
    :type nums: Integer[]
=end
    def initialize(k, nums)
      @k = k
      @mh = MinHeap.new(nums[0...k] || [])
        
    end


=begin
    :type val: Integer
    :rtype: Integer
=end
    def add(val)
      if @mh.size < @k
        @mh.push val
      end
       # It is guaranteed that there will be at least k elements in the array when you search for the kth element.
      x = @mh.pop
      p "Add #{val} and top is #{x}"
      if val >= x
        @mh.push val
      else
        @mh.push x
        return x
      end
      ans = @mh.pop
      @mh.push x
      return ans
    end


end

# Your KthLargest object will be instantiated and called as such:
# obj = KthLargest.new(k, nums)
# param_1 = obj.add(val)
