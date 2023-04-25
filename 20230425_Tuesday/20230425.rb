# Leetcode: 2336. Smallest Number in Infinite Set.
# https://leetcode.com/problems/smallest-number-in-infinite-set/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 114 ms, faster than 100.00% of Ruby online submissions for Smallest
# Number in Infinite Set.
# Memory Usage: 211.5 MB, less than 100.00% of Ruby online submissions for
# Smallest Number in Infinite Set.
# 2023.04.25 Daily Challenge.

class SmallestInfiniteSet
    def initialize()
      @i = 1
      @h = {}
      @b = [] #  returned back.
    end
=begin
    :rtype: Integer
=end
    def pop_smallest()
      if @b.empty? || @b[0] > @i
        @i += 1
        @h[@i - 1] = true
        return @i - 1
      else
         x = @b[0]
         @b.shift
         @h[x] = true
         return x
      end
    end
=begin
    :type num: Integer
    :rtype: Void
=end
    def add_back(num)
      return if ! @h[num]
      if @i - 1 == num
        @i -= 1
      else
        @b.push(num)
        @b.sort! # Fixed bug. Did not change the array.
      end
      @h[num] = false
    end
end
# Your SmallestInfiniteSet object will be instantiated and called as such:
# obj = SmallestInfiniteSet.new()
# param_1 = obj.pop_smallest()
# obj.add_back(num)
