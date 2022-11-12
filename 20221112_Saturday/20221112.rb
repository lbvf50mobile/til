# Leetcode: 295. Find Median from Data Stream.
# https://leetcode.com/problems/find-median-from-data-stream/
class MedianFinder
    def initialize()
      @sum = 0
      @counter = 0
    end


=begin
    :type num: Integer
    :rtype: Void
=end
    def add_num(num)
      @sum += num
      @counter += 1
    end


=begin
    :rtype: Float
=end
    def find_median()
      @sum.fdiv(@counter)
        
    end


end

# Your MedianFinder object will be instantiated and called as such:
# obj = MedianFinder.new()
# obj.add_num(num)
# param_2 = obj.find_median()
