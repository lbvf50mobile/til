# Leetcode: 380. Insert Delete GetRandom O(2).
# https://leetcode.com/problems/insert-delete-getrandom-o1/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# 2022.11.29 Daily Challenge.
# 2022.12.01 Updated.
class RandomizedSet
    def initialize()
      @d = true
      @h = {}
      @a = []
    end
=begin
    :type val: Integer
    :rtype: Boolean
=end
    def insert(val)
      puts "Insert #{val} in #{@a}." if @d
      return false if @h[val]
      @a.push(val)
      @h[val] = @a.size - 1
      puts "Now @h[#{val}] = #{@h[val]} in #{@a.inspect} return true." if @d
      return true
    end
=begin
    :type val: Integer
    :rtype: Boolean
=end
    def remove(val)
      puts "Delte #{val} in #{@a}." if @d
      return false if ! @h[val]
      # Swap in the array last element
      # and elemet to be delted.
      i,j = @h[val], @a.size - 1
      puts "@a[#{i}] = #{@a[i]}, @a[#{j}] = #{@a[j]}." if @d
      a,b = val,@a[j]
      @h[a],@h[b] = @h[b],@h[a]
      @a[i],@a[j] = @a[j],@a[i]
      puts "@a[#{i}] = #{@a[i]}, @a[#{j}] = #{@a[j]}." if @d
      @a.pop
      @h[val] = nil
      puts "#{@a.inspect} return true." if @d
      return true
    end


=begin
    :rtype: Integer
=end
    def get_random()
      puts "Random in #{@a.inspect}." if @d
      @a.sample
    end
end

# Your RandomizedSet object will be instantiated and called as such:
# obj = RandomizedSet.new()
# param_1 = obj.insert(val)
# param_2 = obj.remove(val)
# param_3 = obj.get_random()
