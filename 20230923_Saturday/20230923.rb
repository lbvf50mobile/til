# Leetcode: 1048. Longest String Chain.
# https://leetcode.com/problems/longest-string-chain
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1715 ms, faster than 33.33% of Ruby online submissions for Longest
# String Chain.
# Memory Usage: 212.6 MB, less than 66.67% of Ruby online submissions for
# Longest String Chain.
# 2023.09.23 Daily challenge.
# @param {String[]} words
# @return {Integer}
def longest_str_chain(words)
  @w = words.uniq
  # Hash to split words by size.
  # To calculate predecessors need to
  # address by the size first of all.
  hs = Hash.new{|h,k| h[k] = Array.new}
  @w.each do |w|
    hs[w.size].push(w)
  end
  # Now create adjacency list.
  # Need to check all words with length one character short.
  @al = Hash.new{|h,k| h[k] = Array.new}
  @w.each do |big|
    size = big.size
    hs[size-1].each do |small|
      @al[big].push(small) if check(small,big)
    end
  end
  max = 0
  @mem = {}
  @w.each do |w|
    tmp = dfs(w)
    max = tmp if tmp > max
  end
  return max
end

# Iterate over all elemets from adjacency list.
# Select max value from all adjacency list.
def dfs(w)
  return @mem[w] if @mem[w]
  max = 0
  # Check all predecesors.
  @al[w].each do |pred|
    tmp = dfs(pred)
    max = tmp if tmp > max
  end
  @mem[w] = max + 1 # Save.
  return max + 1 # Return.
end

# Check does small is predesesor of big.
def check(small, big)
  return true if small == big[1..-1] # No first.
  return true if small == big[0...-1] # No last. 
  # Remove from middle.
  # Iterate over all indices exept first and last ones.
  (1...(big.size-1)).each do |i|
    tmp = big[0...i] + big[(i+1)..-1]
    return true if small == tmp
  end
  return false # Fixed here.
end
