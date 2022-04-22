# Leetcode: 706. Design HashMap.
# https://leetcode.com/problems/design-hashmap/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 381 ms, faster than 22.58% of Ruby online submissions for Design HashMap.
# Memory Usage: 214.1 MB, less than 45.16% of Ruby online submissions for Design HashMap.
# Appreciate for the explanation by @sgallivan.
# https://leetcode.com/problems/design-hashmap/discuss/1097755/JS-Python-Java-C%2B%2B-or-(Updated)-Hash-and-Array-Solutions-w-Explanation
class MyHashMap
    def initialize()
      @d = false
      @a = Array.new(2**11).map{ Array.new}

    end


=begin
    :type key: Integer
    :type value: Integer
    :rtype: Void
=end
    def put(key, value)
      row = key >> 10
      puts "Insert: #{key},#{value} => row = #{row}" if @d
      column = @a[row].index{|(i,v)| i == key}

      if column
        @a[row][column][1] = value
      else
        @a[row].push([key, value])
      end
    end


=begin
    :type key: Integer
    :rtype: Integer
=end
    def get(key)
      row = key >> 10
      column = @a[row].index{|(i,v)| i == key}
      if column
        return @a[row][column][1] 
      else
        return -1
      end
    end


=begin
    :type key: Integer
    :rtype: Void
=end
    def remove(key)
      row = key >> 10
      column = @a[row].index{|(i,v)| i == key}
      if column
        @a[row].delete_at(column)
      end
    end
end

# Your MyHashMap object will be instantiated and called as such:
# obj = MyHashMap.new()
# obj.put(key, value)
# param_2 = obj.get(key)
# obj.remove(key)
