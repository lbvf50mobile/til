# Leetcode: 1455. Check If a Word Occurs As a Prefix of Any Word in a Sentence.
# https://leetcode.com/problems/check-if-a-word-occurs-as-a-prefix-of-any-word-in-a-sentence/
# = = = = = = = = = = = = = =
# Accpeted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 0 ms, faster than 100.00% of Ruby online submissions for Check If a
# Word Occurs As a Prefix of Any Word in a Sentence.
# Memory Usage: 211.2 MB, less than 66.67% of Ruby online submissions for
# Check If a Word Occurs As a Prefix of Any Word in a Sentence.
# 2024.12.02 Daily Challenge.
# @param {String} sentence
# @param {String} search_word
# @return {Integer}
def is_prefix_of_word(sentence, search_word)
  i = sentence.split(" ").index{|word| word.start_with?(search_word)}
  if !i 
    return -1
  else
    return i + 1 # Because the answer is 1-indexed.
  end
end
