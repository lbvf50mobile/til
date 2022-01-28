# Leetcode: 211. Design Add and Search Words Data Structure.
# https://leetcode.com/problems/design-add-and-search-words-data-structure/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 739 ms, faster than 16.67% of Ruby online submissions for Design Add and Search Words Data Structure.
# Memory Usage: 224.4 MB, less than 16.67% of Ruby online submissions for Design Add and Search Words Data Structure.
class WordDictionary
    def initialize()
      @d = false
      @root = {}
    end
=begin
    :type word: String
    :rtype: Void
=end
    def add_word(word)
      tmp = @root
      word.chars.each do |char|
        tmp[char] ||= {}
        tmp = tmp[char]
      end
      # Mark a last node as an end of a word.
      tmp[:value] = word
    end
=begin
    :type word: String
    :rtype: Boolean
=end
    def search(word)
      puts "Start: #{word}." if @d
      @word = word
      dfs(0,@root)
    end

    def dfs(i,node)
      # No need to move, need to check do it is last letter of a word.
      if @word.size == i
        return true if node[:value]
        return false
      end
      # Search for a next move.
      char = @word[i]
      if ?. == char
        # Possible to move to any used character.
        (?a..?z).each do |name|
          return true if node[name] && dfs(i+1, node[name])
        end
      else
        # Only one possible move.
        return dfs(i+1,node[char]) if node[char]
      end
      return false
    end
end

# Your WordDictionary object will be instantiated and called as such:
# obj = WordDictionary.new()
# obj.add_word(word)
# param_2 = obj.search(word)
