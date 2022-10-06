# Leetcode: 981. Time Based Key-Value Store.
# https://leetcode.com/problems/time-based-key-value-store/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 377 ms, faster than 100.00% of Ruby online submissions for Time Based Key-Value Store.
# Memory Usage: 266.4 MB, less than 11.54% of Ruby online submissions for Time Based Key-Value Store.
#
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
      @hsh[key] ||= [] 
      @hsh[key].push([timestamp,@hsh[key].size,value])
    end


=begin
    :type key: String
    :type timestamp: Integer
    :rtype: String
=end
    def get(key, timestamp)
      arr = @hsh[key]
      return "" if !arr
      return "" if arr.first.first > timestamp
      return arr.last.last if arr.last.first <= timestamp
      x = arr.bsearch{|t,i,v| t >= timestamp} # First bigger.
      return "" if x.nil?
      t,i,v = x
      if t == timestamp
        return v
      else
        return arr[i-1].last
      end
    end
end

# Your TimeMap object will be instantiated and called as such:
# obj = TimeMap.new()
# obj.set(key, value, timestamp)
# param_2 = obj.get(key, timestamp)
