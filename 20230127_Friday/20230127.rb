# Leetcode: 472. Concatenated Words.
# https://leetcode.com/problems/concatenated-words/
# @param {String[]} words
# @return {String[]}
def find_all_concatenated_words_in_a_dict(words)
  # Based on:
  # https://leetcode.com/problems/concatenated-words/solution/
  dict = {}
  words.each do |x|
    dict[x] = true
  end
  p dict
  answer = []
  words.each do |x|
    len = x.size
    p [x,len]
    dp = Array.new(len+1,false)
    dp[0] = true
    (1..len).each do |i|
      j = (i == len) ? 1 : 0
      while !dp[i] && j < i
        dp[i] = dp[j] && dict[j...i]
        j += 1
      end
    end
    answer.push(x) if dp[len]
  end
  answer
end
