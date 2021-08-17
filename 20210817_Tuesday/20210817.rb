# Leetcode: 303. Range Sum Query - Immutable.
# https://leetcode.com/problems/range-sum-query-immutable/
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/615/week-3-august-15th-august-21st/3892/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
class NumArray

=begin
    :type nums: Integer[]
=end
    def initialize(nums)
      @x = nums.clone
      @x.unshift(0)
      (1...@x.size).each do |i|
        @x[i] += @x[i-1]
      end
    end


=begin
    :type left: Integer
    :type right: Integer
    :rtype: Integer
=end
    def sum_range(left, right)
      @x[right+1] - @x[left]
        
    end


end

# Your NumArray object will be instantiated and called as such:
# obj = NumArray.new(nums)
# param_1 = obj.sum_range(left, right)
