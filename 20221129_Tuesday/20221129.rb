# Leetcode: 380. Insert Delete GetRandom O(1).
# https://leetcode.com/problems/insert-delete-getrandom-o1/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 428 ms, faster than 87.50% of Ruby online submissions for Insert Delete GetRandom O(1).
# Memory Usage: 285.8 MB, less than 12.50% of Ruby online submissions for Insert Delete GetRandom O(1).
# 2022.11.29 Daily Challenge.
class RandomizedSet
    def initialize()
      require 'set'
      @set = Set.new
    end


=begin
    :type val: Integer
    :rtype: Boolean
=end
    def insert(val)
      return false if @set.include?(val)
      @set.add(val)
      return true
    end


=begin
    :type val: Integer
    :rtype: Boolean
=end
    def remove(val)
      return false if ! @set.include?(val)
      @set.delete(val)
      return true
    end


=begin
    :rtype: Integer
=end
    def get_random()
      @set.to_a.sample
    end


end

# Your RandomizedSet object will be instantiated and called as such:
# obj = RandomizedSet.new()
# param_1 = obj.insert(val)
# param_2 = obj.remove(val)
# param_3 = obj.get_random()
