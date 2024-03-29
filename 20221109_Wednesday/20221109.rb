# Leetcode: 901. Online Stock Span.
# https://leetcode.com/problems/online-stock-span/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 248 ms, faster than 92.31% of Ruby online submissions for Online Stock Span.
# Memory Usage: 215.3 MB, less than 15.38% of Ruby online submissions for Online Stock Span.
# 2022.11.09 Daily Challenge.
class StockSpanner
    def initialize()
      @sv = [10**7] # stack values.
      @si = [0] # stack indices.
      @i = 0
    end


=begin
    :type price: Integer
    :rtype: Integer
=end
    def next(price)
      @i += 1
      while (!@sv.empty?) && @sv.last <= price
        @sv.pop()
        @si.pop()
      end
      @sv.push(price)
      @si.push(@i)
      if 0 == @i
        return 1
      elsif 1 == @sv.size
        return @i
      else
        return @i - @si[-2]
      end
    end
end

# Your StockSpanner object will be instantiated and called as such:
# obj = StockSpanner.new()
# param_1 = obj.next(price)
