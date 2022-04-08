# 703. Kth Largest Element in a Stream.
# https://leetcode.com/problems/kth-largest-element-in-a-stream/
class KthLargest

=begin
    :type k: Integer
    :type nums: Integer[]
=end
    def initialize(k, nums)
      @k = k
      @n = nums.uniq.sort
    end


=begin
    :type val: Integer
    :rtype: Integer
=end
    def add(val)
      @n.push(val)
      @n.sort!
      @n[-@k] || @n.last
    end
end

# Your KthLargest object will be instantiated and called as such:
# obj = KthLargest.new(k, nums)
# param_1 = obj.add(val)
