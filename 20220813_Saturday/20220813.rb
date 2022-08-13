# Leetcode: 30. Substring with Concatenation of All Words.
# https://leetcode.com/problems/substring-with-concatenation-of-all-words/
# @param {String} s
# @param {String[]} words
# @return {Integer[]}
def find_substring(s, words)
  @s, @words = s, words
  @n = s.size
  @k = words.size
  @wl = words[0].size
  @substring_size = @k * @wl
  @word_count = words.tally
    
end

def check(i)
  remaining = @word_count.clone
  words_used = 0
  (0...@k).each do |m|
    sub = [i+m*@wl...i+m*@wl+@wl]
    if remaining[sub] > 0
      remaining[sub] -= 1
      words_used += 1
    else
      break
    end
  end
  words_used == @k
end
