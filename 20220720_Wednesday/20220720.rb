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
    i,j = 0,0
    while i < s.size && j < word.size
      if s[i] !=  word[j]
        i += 1
      else
        i += 1
        j += 1
      end
    end
    # Need to reach the end of a word.
    # End of a word is a "terminating zero".
    # Can not skip chars from a word.
    puts "#{s} #{word} #{(word.size == j).inspect}" if @d
    answer += 1 if  word.size == j
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
