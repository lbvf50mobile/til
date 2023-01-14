# Leetcode: 1061. Lexicographically Smallest Equivalent String.
# https://leetcode.com/problems/lexicographically-smallest-equivalent-string/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 100 ms, faster than 100.00% of Ruby online submissions for Lexicographically Smallest Equivalent String.
# Memory Usage: 211.1 MB, less than 100.00% of Ruby online submissions for Lexicographically Smallest Equivalent String.
# 2023.01.14 Daily Challenge.
# @param {String} s1
# @param {String} s2
# @param {String} base_str
# @return {String}
require "set"
def smallest_equivalent_string(s1, s2, base_str)
  # Build first graph that connect chars.
  @g = {}
  (?a..?z).each do |char|
    @g[char] = Set.new
  end
  @n = s1.size
  @n.times do |i|
    a,b = s1[i],s2[i]
    @g[a].add(b)
    @g[b].add(a)
  end
  # Separate conected components.
  # Array of components. Each component
  # is an array of chars.
  @v = {}
  @cmps = []
  (?a..?z).each do |ch|
    if @v[ch].nil?
      @component = []
      dfs(ch)
      @cmps.push(@component)
    end
  end
  # Create hash where for each
  # char found minimum counterpart
  # from it's component.
  @mins = {}
  @cmps.each do |cmp|
    min = cmp.min
    cmp.each do |x|
      @mins[x] = min
    end
  end
  return base_str.chars.map{|x| @mins[x]}.join
end

def dfs(char)
  return if @v[char]
  @v[char] = true
  @component.push(char)
  @g[char].to_a.each do |nchar|
    dfs(nchar)
  end
end
