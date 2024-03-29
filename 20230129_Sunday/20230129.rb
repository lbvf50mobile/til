# Leetcode: 460. LFU Cache.
# https://leetcode.com/problems/lfu-cache/
class LFUCache
  # Based on:
  # https://leetcode.com/problems/lfu-cache/solution/

=begin
    :type capacity: Integer
=end
    def initialize(capacity)
      require 'set'
      @cap = 0
      @c = {}
      @f = {}
      @minf = 0
    end


=begin
    :type key: Integer
    :rtype: Integer
=end
    def get(key)
    end


=begin
    :type key: Integer
    :type value: Integer
    :rtype: Void
=end
    def put(key, value)
      return if @cap <= 0
      fav = @c[key]
      if fav
        return
      end
        
    end


end

# Your LFUCache object will be instantiated and called as such:
# obj = LFUCache.new(capacity)
# param_1 = obj.get(key)
# obj.put(key, value)
