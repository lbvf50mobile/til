# Leetcode: 30. Substring with Concatenation of All Words.
# https://leetcode.com/problems/substring-with-concatenation-of-all-words/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1265 ms, faster than 62.50% of Ruby online submissions for Substring with Concatenation of All Words.
# Memory Usage: 217 MB, less than 12.50% of Ruby online submissions for Substring with Concatenation of All Words.
# @param {String} s
# @param {String[]} words
# @return {Integer[]}
def find_substring(s, words)
  # Based on:
  # https://leetcode.com/problems/substring-with-concatenation-of-all-words/solution/
  @d = false
  @s, @words = s, words
  @n = s.size
  @k = words.size
  @wl = words[0].size
  @substring_size = @k * @wl
  @word_count = words.tally
  answer = []
  (0..(@n - @substring_size)).each do |i| # Here was an error!
    answer.push(i) if check(i) # Here was an error!
  end
  answer
end

def check(i)
  p [i,@s[i]] if @d
  remaining = @word_count.clone
  p remaining if @d
  words_used = 0
  (0...@k).each do |m|
    start = i + m*@wl # Here was error!
    till = start + @wl
    sub = @s[start...till]
    p [sub,start,till] if @d
    if remaining[sub] && remaining[sub] > 0
      remaining[sub] -= 1
      words_used += 1
    p [sub,words_used,@k] if @d
    else
      break
    end
  end
  # p words_used

  words_used == @k
end
