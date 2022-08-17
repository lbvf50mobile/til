# Leetcode: 804. Unique Morse Code Words.
# https://leetcode.com/problems/unique-morse-code-words/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 139 ms, faster than 40.74% of Ruby online submissions for Unique Morse Code Words.
# Memory Usage: 210.9 MB, less than 70.37% of Ruby online submissions for Unique Morse Code Words.
# @param {String[]} words
# @return {Integer}
def unique_morse_representations(words)
  @map = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
  words.map{|x| word2morse(x)}.uniq.size
end

def word2morse(word)
  word.chars.map{|x| @map[x.ord - ?a.ord]}.join
end
