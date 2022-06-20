# Leetcode: 820. Short Encoding of Words.
# https://leetcode.com/problems/short-encoding-of-words/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 352 ms, faster than 100.00% of Ruby online submissions for Short Encoding of Words.
# Memory Usage: 212.5 MB, less than 100.00% of Ruby online submissions for Short Encoding of Words.
# @param {String[]} words
# @return {Integer}
def minimum_length_encoding(words)
  # Based on:
  # https://leetcode.com/problems/short-encoding-of-words/solution/
  require "set"
  good =  Set.new(words)
  words.each do |word|
    (1...word.size).each do |k|
      good.delete(word[k..-1])
    end
  end
  good.to_a.map{|x| x.size+1}.sum
end
