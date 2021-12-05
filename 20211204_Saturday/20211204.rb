# Leetcode: 1032. Stream of Characters.
# https://leetcode.com/problems/stream-of-characters/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 680 ms, faster than 84.62% of Ruby online submissions for Stream of Characters.
# Memory Usage: 240.5 MB, less than 84.62% of Ruby online submissions for Stream of Characters.
class StreamChecker

=begin
:type words: String[]
=end
  def initialize(words)
    @words,@trie = words, {}
    @trie[:end] = false # Dose this node is an words end?
    @string = []
    create_trie_of_reversed_words
  end


=begin
:type letter: Character
:rtype: Boolean
=end
  def query(letter)
    @string.push(letter)
    pointer = @trie
    @string.reverse_each do |char|
      if ! pointer[char]
        # Can not move the pointer to the new char.
        return false
      end
      pointer = pointer[char]
      # This is an end of a work.
      return true if pointer[:end]
    end
    # Did not find a word.
    return false
  end

  def create_trie_of_reversed_words
    @words.each do |word|
      # Each word starting from a root.
      pointer = @trie
      (0...word.size).reverse_each do |i|
        char = word[i]
        # Add path to the new char.
        if ! pointer[char]
          tmp = {}
          tmp[:end] = false
          pointer[char] = tmp
        end
        pointer = pointer[char]
        pointer[:end] = true if 0 == i
      end
    end
  end

end

# Your StreamChecker object will be instantiated and called as such:
# # obj = StreamChecker.new(words)
# # param_1 = obj.query(letter)
