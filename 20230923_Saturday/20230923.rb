# Leetcode: 1048. Longest String Chain.
# https://leetcode.com/problems/longest-string-chain
# @param {String[]} words
# @return {Integer}
def longest_str_chain(words)
    
end

def check(small, big)
  return true if small == big[1..-1] # No first.
  return true if small == big[0...-1] # No last. 
  (1...(big.size-1)).each do |i|
    tmp = big[0...i] + big[(i+1)..-1]
    return true if small == tmp
  end
  return true
end
