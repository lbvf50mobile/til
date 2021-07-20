# Leetcode: Shuffle an Array.
# Accepted.
# Thanks God!
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/610/week-3-july-15th-july-21st/3820/
class Solution

=begin
    :type nums: Integer[]
=end
    def initialize(nums)
       @x = nums 
    end


=begin
    Resets the array to its original configuration and return it.
    :rtype: Integer[]
=end
    def reset()
      @x
        
    end


=begin
    Returns a random shuffling of the array.
    :rtype: Integer[]
=end
    def shuffle()
      @x.shuffle
        
    end


end

# Your Solution object will be instantiated and called as such:
# obj = Solution.new(nums)
# param_1 = obj.reset()
# param_2 = obj.shuffle()
