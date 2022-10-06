# Leetcode: 981. Time Based Key-Value Store.
# https://leetcode.com/problems/time-based-key-value-store/
class TimeMap
    def initialize()
      @hsh = {}
        
    end


=begin
    :type key: String
    :type value: String
    :type timestamp: Integer
    :rtype: Void
=end
    def set(key, value, timestamp)
      @hsh[key] ||= {}
      @hsh[key][timestamp] = value
    end


=begin
    :type key: String
    :type timestamp: Integer
    :rtype: String
=end
    def get(key, timestamp)
      return  @hsh[key][timestamp]
    end


end

# Your TimeMap object will be instantiated and called as such:
# obj = TimeMap.new()
# obj.set(key, value, timestamp)
# param_2 = obj.get(key, timestamp)
