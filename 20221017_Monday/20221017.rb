# Leetcode: 1832. Check if the Sentence Is Pangram.
# https://leetcode.com/problems/check-if-the-sentence-is-pangram/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 190 ms, faster than 23.08% of Ruby online submissions for Check if the Sentence Is Pangram.
# Memory Usage: 211.2 MB, less than 11.54% of Ruby online submissions for Check if the Sentence Is Pangram.
# 2022.10.17 Daily Challenge.
# @param {String} sentence
# @return {Boolean}
def check_if_pangram(sentence)
  counter = Array.new(26,0)
  sentence.chars.each{|x| counter[x.ord - ?a.ord] += 1}
  counter.all?{|x| 1 <= x}
end
