# Leetcode: 792. Number of Matching Subsequences.
# https://leetcode.com/problems/number-of-matching-subsequences/
# @param {String} s
# @param {String[]} words
# @return {Integer}
def num_matching_subseq(s, words)
  sa = create_array(s)
  wa = words.map{|x| create_array(x)}
  answer = 0
  words.zip(wa).each do |(word,arr)|
    next if word.size > s.size
    next if ! (same_set(arr,sa))
    answer += 1
    # Todo need to check word is subset.

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
