# Leetcode: 208. Implement Trie (Prefix Tree).
# https://leetcode.com/problems/implement-trie-prefix-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 199 ms, faster than 97.22% of Ruby online submissions for Implement Trie (Prefix Tree).
# Memory Usage: 221.4 MB, less than 91.67% of Ruby online submissions for Implement Trie (Prefix Tree).
# 2023.03.17 Daily Challenge.
class Trie
    def initialize()
      # End of word is a "symbol" to.
      # Each element contains pointers to the next ones, "passage ways to symbols".
      # And frist element is a begining of the word, "^" regex symbol.
      @r = {}
    end


=begin
    :type word: String
    :rtype: Void
=end
    def insert(word)
      pnt = @r
      word.chars.each do |x|
        if ! pnt[x]
          pnt[x] = {}
        end
        pnt = pnt[x]
      end
      if ! pnt['end']
        pnt['end'] = {}
      end
    end


=begin
    :type word: String
    :rtype: Boolean
=end
    def search(word)
      pnt = @r
      word.chars.each do |x|
        return false if !pnt[x]
        pnt = pnt[x]
      end
      return true if pnt['end']
      return false
    end


=begin
    :type prefix: String
    :rtype: Boolean
=end
    def starts_with(prefix)
      pnt = @r
      prefix.chars.each do |x|
        return false if !pnt[x]
        pnt = pnt[x]
      end
      return true
    end


end

# Your Trie object will be instantiated and called as such:
# obj = Trie.new()
# obj.insert(word)
# param_2 = obj.search(word)
# param_3 = obj.starts_with(prefix)
