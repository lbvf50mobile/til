# Leetcode: 705. Design HashSet.
# https://leetcode.com/problems/design-hashset/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 175 ms, faster than 78.26% of Ruby online submissions for Design HashSet.
# Memory Usage: 214.4 MB, less than 65.22% of Ruby online submissions for Design HashSet.
class MyHashSet
    def initialize()
      @h = {}
        
    end


=begin
    :type key: Integer
    :rtype: Void
=end
    def add(key)
      @h[key] = true
      nil
    end


=begin
    :type key: Integer
    :rtype: Void
=end
    def remove(key)
      @h.delete(key)
      nil
    end


=begin
    :type key: Integer
    :rtype: Boolean
=end
    def contains(key)
      @h[key] ? true : false
    end


end

# Your MyHashSet object will be instantiated and called as such:
# obj = MyHashSet.new()
# obj.add(key)
# obj.remove(key)
# param_3 = obj.contains(key)
