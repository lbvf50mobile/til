# Leetcode: 146. LRU Cache.
# https://leetcode.com/problems/lru-cache/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 460 ms, faster than 38.96% of Ruby online submissions for LRU Cache.
# Memory Usage: 252.1 MB, less than 76.62% of Ruby online submissions for LRU
# Cache.
# 2023.07.18 Daily Challenge.
class LRUCache
    class ListItem
        attr_accessor :l, :r, :v, :k
        def initialize(key,val)
            @v = val
            @k = key
            @l,@r = nil, nil
        end
    end

=begin
    :type capacity: Integer
=end
    def initialize(capacity)
        # Initialize list
        @dump_start = ListItem.new(nil,nil)
        @dump_end = ListItem.new(nil,nil)
        @dump_start.r = @dump_end
        @dump_end.l = @dump_start
        @size = 0
        
        # Set capacity
        @c = capacity
        
        # Hash indeces
        @h = {}
        
    end
    
    def cut_list_item list_item
        list_item.l.r = list_item.r
        list_item.r.l = list_item.l
        list_item
    end
    
    def put_list_item_in_front list_item
        tmp = @dump_start.r
        @dump_start.r = list_item
        list_item.l = @dump_start
        tmp.l = list_item
        list_item.r = tmp
        list_item
    end
    
    def cut_list_item_and_put_it_first list_item
        cut_list_item list_item
        put_list_item_in_front list_item
        list_item
    end
    
    def remove_last_item_element_from_list_and_fix_size
        tmp = @dump_end.l
        @dump_end.l = tmp.l
        tmp.l.r = @dump_end
        tmp.l = nil
        tmp.r = nil
        @size -= 1
        @h.delete(tmp.k)
        tmp
    end


=begin
    :type key: Integer
    :rtype: Integer
=end
    def get(key)
        return -1 if @h[key].nil?
        cut_list_item_and_put_it_first @h[key]
        @h[key].v
    end


=begin
    :type key: Integer
    :type value: Integer
    :rtype: Void
=end
    def put(key, value)
        if @h[key].nil?
            tmp = ListItem.new(key,value)
            @h[key] = tmp
            put_list_item_in_front tmp
            @size += 1
            remove_last_item_element_from_list_and_fix_size if @size > @c
        else
            cut_list_item_and_put_it_first @h[key]
            @h[key].v = value
        end
        
    end


end

# Your LRUCache object will be instantiated and called as such:
# obj = LRUCache.new(capacity)
# param_1 = obj.get(key)
# obj.put(key, value)
