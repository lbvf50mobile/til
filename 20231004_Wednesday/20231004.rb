# Leetcode: 706. Design HashMap.
# https://leetcode.com/problems/design-hashmap/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 116 ms, faster than 58.33% of Ruby online submissions for Design
# HashMap.
# Memory Usage: 296.9 MB, less than 8.33% of Ruby online submissions for Design
# HashMap.
# 2023.10.04 Daily Challegne.

class MyHashMap
    def initialize()
      @a = Array.new(10**6+1,-1)
    end


=begin
    :type key: Integer
    :type value: Integer
    :rtype: Void
=end
    def put(key, value)
      @a[key] = value
        
    end


=begin
    :type key: Integer
    :rtype: Integer
=end
    def get(key)
      @a[key]
    end


=begin
    :type key: Integer
    :rtype: Void
=end
    def remove(key)
      @a[key] = -1
    end


end

# Your MyHashMap object will be instantiated and called as such:
# obj = MyHashMap.new()
# obj.put(key, value)
# param_2 = obj.get(key)
# obj.remove(key)
