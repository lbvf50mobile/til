# Leetcode: 307. Range Sum Query - Mutable.
# https://leetcode.com/problems/range-sum-query-mutable/
# TLE.
# Based on: https://leetcode.com/problems/range-sum-query-mutable/solution/
class NumArray

=begin
    :type nums: Integer[]
=end
    def initialize(nums)
      @nums = nums
      l = Math.sqrt(@nums.size)
      len = (@nums.size/l).ceil
      b = Array.new(len,0)
      (0...@nums.size).each do |i|
        b[i/len] += @nums[i]
      end
      @len = len
      @b = b
    end


=begin
    :type index: Integer
    :type val: Integer
    :rtype: Void
=end
    def update(index, val)
      i = index
      b_l = i/@len
      @b[b_l] = @b[b_l] - @nums[i] + val
      @nums[i] = val
    end


=begin
    :type left: Integer
    :type right: Integer
    :rtype: Integer
=end
    def sum_range(left, right)
      sum = 0
      i,j = left, right
      strt = i/@len
      fin = j/@len
      if(strt == fin)
        (i..j).each{|k| sum += @nums[k]}
      else
        (i..((strt+1)*@len-1)).each{|k| sum += @nums[k]}
        ((strt+1)..(fin-1)).each{|k| sum += @b[k]}
        ((fin*@len)..j).each{|k| sum += @nums[k]}
      end
      sum
    end
end

# Your NumArray object will be instantiated and called as such:
# obj = NumArray.new(nums)
# obj.update(index, val)
# param_2 = obj.sum_range(left, right)
