# Leetcode: 1032. Stream of Characters.
# https://leetcode.com/problems/stream-of-characters/
# TLE;
class StreamChecker

=begin
:type words: String[]
=end
  def initialize(words)
    @words,@trie = words, {}
    @trie[:end] = false # Dose this node is an words end?
    @array_of_pointers = []
    create_trie
  end


=begin
:type letter: Character
:rtype: Boolean
=end
  def query(letter)
    # First add new word pointer.
    @array_of_pointers.push(@trie) if @trie[letter]
    answer = false
    # Let iterate over pointers.
    # Only a pointer that can be moved further would be saved.
    i = 0
    while i < @array_of_pointers.size
      pointer = @array_of_pointers[i]
      if pointer[letter]
          @array_of_pointers[i] = pointer[letter]
          answer = true if pointer[letter][:end]
          i += 1
      else
        @array_of_pointers.delete_at(i)
      end
    end
    answer
  end

  def create_trie
    @words.each do |word|
      # Each word starting from a root.
      pointer = @trie
      (0...word.size).each do |i|
        char = word[i]
        if ! pointer[char]
          tmp = {}
          tmp[:end] = false
          pointer[char] = tmp
        end
        pointer = pointer[char]
        pointer[:end] = true if i == word.size - 1
      end
    end
  end

end

# Your StreamChecker object will be instantiated and called as such:
# # obj = StreamChecker.new(words)
# # param_1 = obj.query(letter)
