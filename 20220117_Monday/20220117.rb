# Leetcode: 290. Word Pattern.
# https://leetcode.com/problems/word-pattern/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 85 ms, faster than 51.85% of Ruby online submissions for Word Pattern.
# Memory Usage: 209.7 MB, less than 51.85% of Ruby online submissions for Word Pattern.
# @param {String} pattern
# @param {String} s
# @return {Boolean}
def word_pattern(pattern, s)
  words = s.split(" ")
  return false if pattern.size != words.size
  char_word = {}
  word_char = {}
  (0...pattern.size).each do |i|
    char = pattern[i]
    word = words[i]
    if (!char_word[char]) && (!word_char[word])
      char_word[char] = word
      word_char[word] = char
      next
    end
    return false if char_word[char] != word
  end
  return true
end
