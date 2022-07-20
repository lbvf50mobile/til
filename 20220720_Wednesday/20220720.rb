# Leetcode: 792. Number of Matching Subsequences.
# https://leetcode.com/problems/number-of-matching-subsequences/
# @param {String} s
# @param {String[]} words
# @return {Integer}
# TLE.
def num_matching_subseq(s, words)
  @d = false
  sa = create_array(s)
  wa = words.map{|x| create_array(x)}
  answer = 0
  words.zip(wa).each do |(word,arr)|
    next if word.size > s.size
    next if ! (same_set(arr,sa))
    # Idea from:
    # https://leetcode.com/problems/number-of-matching-subsequences/discuss/2308747/Bucket-by-character-or-Intuition-explained-with-image
    j = 0 # Sub string pointer.
    (0...s.size).each do |i|
      if s[i] == word[j]
        j += 1
      end
      answer += 1 if j == word.size
      break if j == word.size
    end
  end
  answer
end

def create_array(s)
  answer = Array.new(30,0)
  s.chars.each do |c|
    answer[c.ord - ?a.ord] += 1
  end
  answer
end

def same_set(small,big)
  (0...small.size).each do |i|
    return false if small[i] > big[i]
  end
  return true
end
