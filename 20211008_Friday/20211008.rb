# Leetcode: 208. Implement Trie (Prefix Tree).
# https://leetcode.com/problems/implement-trie-prefix-tree/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 168 ms, faster than 89.66% of Ruby online submissions for Implement Trie (Prefix Tree).
# Memory Usage: 221.5 MB, less than 81.03% of Ruby online submissions for Implement Trie (Prefix Tree).
class Trie
    def initialize()
      @root = {}
    end


=begin
    :type word: String
    :rtype: Void
=end
    def insert(word)
      w = word.chars
      w.push('end')
      node = @root
      # Add 'bridge' for each element.
      w.each do |key|
        node[key] ||= {}
        node = node[key]
      end
        
    end


=begin
    :type word: String
    :rtype: Boolean
=end
    def search(word)
      w = word.chars
      w.push('end')
      search_arr(w)
    end


=begin
    :type prefix: String
    :rtype: Boolean
=end
    def starts_with(prefix)
      search_arr(prefix.chars)
    end

    def search_arr(arr)
      node = @root
      # Each element should have a 'bridge'.
      arr.each do |key|
        return false if ! node[key]
        node = node[key]
      end
      return true
    end
end

# Your Trie object will be instantiated and called as such:
# obj = Trie.new()
# obj.insert(word)
# param_2 = obj.search(word)
# param_3 = obj.starts_with(prefix)
