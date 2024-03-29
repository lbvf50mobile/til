# Leetcode: 677. Map Sum Pairs.
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/612/week-5-july-29th-july-31st/3832/
# Accepted.
# Thanks God!
#
class MapSum

=begin
    Initialize your data structure here.
=end
    def initialize()
      @h = {}
    end


=begin
    :type key: String
    :type val: Integer
    :rtype: Void
=end
    def insert(key, val)
      @h[key] = val
    end


=begin
    :type prefix: String
    :rtype: Integer
=end
    def sum(prefix)
      @h.keys.select{|x| Regexp.new('^'+prefix) === x}.map{|x| @h[x]}.sum
    end


end

# Your MapSum object will be instantiated and called as such:
# obj = MapSum.new()
# obj.insert(key, val)
# param_2 = obj.sum(prefix)
