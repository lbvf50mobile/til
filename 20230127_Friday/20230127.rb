# Leetcode: 472. Concatenated Words.
# https://leetcode.com/problems/concatenated-words/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1453 ms, faster than 25.00% of Ruby online submissions for Concatenated Words.
# Memory Usage: 215.8 MB, less than 25.00% of Ruby online submissions for Concatenated Words
# 2023.01.27 Daily Challenge.
# @param {String[]} words
# @return {String[]}
def find_all_concatenated_words_in_a_dict(words)
  # Based on:
  # https://leetcode.com/problems/concatenated-words/solution/
  dict = {}
  words.each do |x|
    dict[x] = true
  end
  answer = []
  words.each do |x|
    len = x.size
    dp = Array.new(len+1,false)
    dp[0] = true
    (1..len).each do |i|
      # To prevent treat word coprised from itself,
      # if right border is len, left border must be 
      # a second character.
      j = (i == len) ? 1 : 0
      while !dp[i] && j < i
        dp[i] = dp[j] && dict[x[j...i]]
        j += 1
      end
    end
    answer.push(x) if dp[len]
  end
  answer
end
