# Leetcode: 901. Online Stock Span.
# https://leetcode.com/problems/online-stock-span/
# Fails:
# ["StockSpanner","next","next","next","next","next"]
# [[],[31],[41],[48],[59],[79]]
class StockSpanner
    def initialize()
      @sv = [] # stack values.
      @si = [] # stack indices.
      @i = -1
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
