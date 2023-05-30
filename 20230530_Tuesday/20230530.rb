# Leetcode: 705. Design HashSet.
# https://leetcode.com/problems/design-hashset/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 159 ms, faster than 92.31% of Ruby online submissions for Design
# HashSet.
# Memory Usage: 214.3 MB, less than 30.77% of Ruby online submissions for Design
# HashSet.
# 2023.05.30 Daily Challenge.
class MyHashSet
  # Hint from:
  # https://leetcode.com/problems/design-hashset/discuss/769047/Java-Solution-using-Bit-Manipulation
    def initialize()
      n = 10**6
      @a = Array.new((n+128)/64,0)
      @ones = (2**65)-1 # ! here.
      @tmp = {}
    end


=begin
    :type key: Integer
    :rtype: Void
=end
    def add(key)
      @tmp[key] = true
      i = get_i(key)
      j = get_b(key)
      x = @a[i]
      num = 1 << j
      return if 1 == (x & num)
      @a[i] = x | num
    end


=begin
    :type key: Integer
    :rtype: Void
=end
    def remove(key)
      i = get_i(key)
      j = get_b(key)
      x = @a[i]
      num = 1 << j
      return if 0 == (x & num)
      inverse = @ones ^ num
      @a[i] = x & inverse
    end


=begin
    :type key: Integer
    :rtype: Boolean
=end
    def contains(key)
      i = get_i(key)
      j = get_b(key)
      x = @a[i]
      num = 1 << j
      ans = 0 != (x & num)
      test = @tmp[key]
      return ans
    end
    # Get index.
    def get_i(key)
      key/64
    end
    # Get byte number.
    # Or power of two in 64 bit int.
    def get_b(key)
      key%64
    end


end

# Your MyHashSet object will be instantiated and called as such:
# obj = MyHashSet.new()
# obj.add(key)
# obj.remove(key)
# param_3 = obj.contains(key)
