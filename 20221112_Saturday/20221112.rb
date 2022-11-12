# Leetcode: 295. Find Median from Data Stream.
# https://leetcode.com/problems/find-median-from-data-stream/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1417 ms, faster than 84.62% of Ruby online submissions for Find Median from Data Stream.
# Memory Usage: 229.2 MB, less than 15.38% of Ruby online submissions for Find Median from Data Stream.
# 2022.11.12 Daily Challenge.
# Based on:
# https://leetcode.com/problems/find-median-from-data-stream/discuss/2807068/One-liner-fast-and-simple-solution-using-binary-search
class MedianFinder
  # Based on:
  # https://leetcode.com/problems/find-median-from-data-stream/discuss/2807068/One-liner-fast-and-simple-solution-using-binary-search
    def initialize()
      @x = []
    end


=begin
    :type num: Integer
    :rtype: Void
=end
    def add_num(num)
      i = @x.bsearch_index{|n| num <= n}
      if i
        @x.insert(i,num)
      else
        @x.push(num)
      end
    end


=begin
    :rtype: Float
=end
    def find_median()
      n = @x.size
      if n.odd?
        @x[n/2]
      else
        (@x[n/2] + @x[(n/2) - 1])/2.0
      end
    end


end

# Your MedianFinder object will be instantiated and called as such:
# obj = MedianFinder.new()
# obj.add_num(num)
# param_2 = obj.find_median()
