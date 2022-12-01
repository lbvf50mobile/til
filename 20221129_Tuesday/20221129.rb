# Leetcode: 380. Insert Delete GetRandom O(2).
# https://leetcode.com/problems/insert-delete-getrandom-o1/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 368 ms, faster than 100.00% of Ruby online submissions for Insert Delete GetRandom O(1).
# Memory Usage: 248.5 MB, less than 100.00% of Ruby online submissions for Insert Delete GetRandom O(1).
# 2022.11.29 Daily Challenge.
# 2022.12.01 Updated.
class RandomizedSet
    def initialize()
      @h = {}
      @a = []
    end
=begin
    :type val: Integer
    :rtype: Boolean
=end
    def insert(val)
      return false if @h[val]
      @a.push(val)
      @h[val] = @a.size - 1
      return true
    end
=begin
    :type val: Integer
    :rtype: Boolean
=end
    def remove(val)
      return false if ! @h[val]
      # Swap in the array last element
      # and elemet to be delted.
      i,j = @h[val], @a.size - 1
      a,b = val,@a[j]
      @h[a],@h[b] = @h[b],@h[a]
      @a[i],@a[j] = @a[j],@a[i]
      @a.pop
      @h[val] = nil
      return true
    end


=begin
    :rtype: Integer
=end
    def get_random()
      @a.sample
    end
end

# Your RandomizedSet object will be instantiated and called as such:
# obj = RandomizedSet.new()
# param_1 = obj.insert(val)
# param_2 = obj.remove(val)
# param_3 = obj.get_random()
