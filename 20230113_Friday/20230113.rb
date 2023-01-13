# Leetcode: 2246. Longest Path With Different Adjacent Characters.
# https://leetcode.com/problems/longest-path-with-different-adjacent-characters/
# @param {Integer[]} parent
# @param {String} s
# @return {Integer}
# TLE.
def longest_path(parent, s)
  @n = parent.size
  @s = s
  @ch = Array.new(@n).map{[]}
  @max = 0
  (1...@n).each do |i|
    prnt = parent[i]
    @ch[prnt].push(i)
  end
  dfs(0,?.)
  return @max
end

def dfs(i,prev)
  return 0 if i == @n
  char = @s[i]
  max, max1 = 0,0
  @ch[i].each do |j|
    tmp = dfs(j,char)
    # Add this line from the Leetcode's solution.
    # And it is no surprice that still TLE.
    next if @s[i] == @s[j]
    if tmp > max
      max,max1 = tmp, max
    elsif tmp > max1
      max1 = tmp
    end
  end
  tmp1 = max + 1 + max1
  @max = tmp1 if tmp1 > @max
  if prev != char
    return max + 1
  end
  return 0
end
