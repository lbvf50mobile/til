# Leetcode: 1048. Longest String Chain.
# https://leetcode.com/problems/longest-string-chain/
# @param {String[]} words
# @return {Integer}
def longest_str_chain(words)
  @w = words.sort_by{|x| -x.size} # Longest first.
  # Current word length has list of possible next element of the chain.
  # Possible parents of i+1 are i.
  @prev = @w.each_with_object(Hash.new){|e,o| o[e.size+1] ||= []; o[e.size+1].push(e)} 
  @dp = {}
  @w.each do |w|
    rec(w)
  end
  @dp.values.max
end

def rec(word)
  return @dp[word] if @dp[word]
  if @prev[word.size].nil?
    @dp[word] = 1
    return 1
  end
  @prev[word.size]

  prev = @prev[word.size].select{|x| relative(x,word)}.map{|x| rec(x)}.max
  @dp[word] = prev + 1
  return prev + 1
end

def relative(prev,curr)
  errors = 0
  j = 0
  (0...prev.size).each do |i|
    if prev[i] != curr[j] && 0 == errors
      j += 1
      errors += 1
      return false if prev[i] != curr[j]
    end
    return false if prev[i] != curr[j] && 0 != errors
    j += 1
  end
  1 == errors
end
