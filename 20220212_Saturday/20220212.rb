# Leetcode: 127. Word Ladder.
# https://leetcode.com/problems/word-ladder/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 2049 ms, faster than 28.13% of Ruby online submissions for Word Ladder.
# Memory Usage: 212.7 MB, less than 25.00% of Ruby online submissions for Word Ladder.
# @param {String} begin_word
# @param {String} end_word
# @param {String[]} word_list
# @return {Integer}
def ladder_length(begin_word, end_word, word_list)
  # Code based on: https://leetcode.com/problems/word-ladder/discuss/1190358/Straightforward-%2B-Clean-Python-BFS
  idxs = {}
  require 'set'
  words = Set.new(word_list)
  return 0 unless words.include?(end_word) 

  word_list.each do |word|
    word.chars.each_with_index do |letter, idx|
      idxs[idx] ||= Set.new
      idxs[idx].add(letter)
    end
  end

  q = []
  q.push([begin_word,1])

  seen = Set.new
  seen.add(begin_word)

  while ! q.empty?
    word, size = q.shift
    return size if word == end_word
    (0...word.size).each do |i|
      idxs[i].to_a.each do |j|
        nw = word[0...i] + j + word[i+1..-1]
        if words.include?(nw) && (! seen.include?(nw))
          q.push([nw, size+1])
          seen.add(nw)
        end
      end
    end
  end
  return 0
end
