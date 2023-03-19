# Leetcode: 211. Design Add and Search Words Data Structure.
# https://leetcode.com/problems/design-add-and-search-words-data-structure/
# TLE.

class WordDictionary
    def initialize()
      @t = {}
    end


=begin
    :type word: String
    :rtype: Void
=end
    def add_word(word)
      pnt = @t
      word.chars.each do |x|
        if ! pnt[x] 
            pnt[x] = {}
        end
        pnt = pnt[x]
      end
      pnt['end'] = {}
    end


=begin
    :type word: String
    :rtype: Boolean
=end
    def search(word)
      @w = word
      dfs(@t,0)
    end
    # Search fo transfer to ith char. 
    def dfs(pnt,i)
      # We alreadys standing on last char.
      # And need to find a way to the end of a word.
      if @w.size == i
        if pnt['end']
          return true
        else
          return false
        end
      end
      x = @w[i]
      if ?. == x
        (?a..?z).each do |ch|
          next if ! pnt[ch]
          return true if dfs(pnt[ch],i+1) 
        end
      else
        return false if ! pnt[x]
        return dfs(pnt[x], i+1)
      end
      # Did not return true.
      return false
    end
end

# Your WordDictionary object will be instantiated and called as such:
# obj = WordDictionary.new()
# obj.add_word(word)
# param_2 = obj.search(word)
